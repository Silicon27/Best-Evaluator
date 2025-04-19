#include <iostream>
#include <string>
#include <queue>
#include <stack>

struct Postfix {
    std::string expression;
};

bool isNumeric(const std::string& str) {
    return !str.empty() && std::all_of(str.begin(), str.end(), [](char c) {
        return std::isdigit(static_cast<unsigned char>(c));
    });
}

bool isOperator(const std::string& str) {
    if (str == "+" || str == "-" || str == "*" || str == "/" || str == "**")    return true;
    return false;
}

bool isUnaryOperator(const std::string& str) {
    if (str == "!" || str == "~") return true;
    return false;
}

class Evaluator {
public:
    explicit Evaluator(std::string  expression) : expression_(std::move(expression)) {}

    [[nodiscard]] static int precedence(const std::string& op) {
        if (op == ",")        return 0;
        if (op == "="  || op == "+=" || op == "-=" || op == "*=" ||
            op == "/=" || op == "%=" || op == "<<="|| op == ">>="||
            op == "&=" || op == "^=" || op == "|=")     return 1;
        if (op == "?:")       return 2;
        if (op == "||" || op == "or")       return 3;
        if (op == "&&" || op == "and")       return 4;
        if (op == "|" )       return 5;
        if (op == "^" )       return 6;
        if (op == "&" )       return 7;
        if (op == "==" || op == "!=") return 8;
        if (op == "<"  || op == "<="|| op == ">" || op == ">=") return 9;
        if (op == "<<" || op == ">>") return 10;
        if (op == "+"  || op == "-")  return 11;
        if (op == "*"  || op == "/" || op == "%") return 12;
        if (op == "**")       return 13;
        if (op == "!"  || op == "~"   ||
            op == "u+" || op == "u-"  ||
            op == "++" || op == "--"  ||
            op == "sizeof" || op == "new" || op == "delete")
            return 14;
        if (op == "()" || op == "[]" || op == "->" || op == "."
                              || op == "p++" || op == "p--")     // encode postfix ++/-- if you like
                                  return 15;
        return -1; // Unknown operator
    }



    [[nodiscard]] Postfix getPostfix() const {
        return postfixExpression_;
    }

    [[nodiscard]] std::string getExpression() const {
        return expression_;
    }

    [[nodiscard]] std::queue<std::string> getPostfixQueue() const {
        return postfixQueue_;
    }

    [[nodiscard]] std::stack<std::string> getOperatorStack() const {
        return operatorStack_;
    }

    void generatePostfix() {
        for (int i = 0; i < expression_.length(); ++i) {
            char ch = expression_[i];
            if (isdigit(ch)) {
                std::string number(1, ch);
                while (i + 1 < expression_.length() && isdigit(expression_[i + 1])) {
                    number += expression_[++i];
                }
                this->postfixQueue_.emplace(number);
            } else if (ch == '(') {
                this->operatorStack_.emplace(1, ch);
            } else if (ch == ')') {
                while (!this->operatorStack_.empty() && this->operatorStack_.top()[0] != '(') {
                    this->postfixQueue_.emplace(this->operatorStack_.top());
                    this->operatorStack_.pop();
                }
                if (!this->operatorStack_.empty() && this->operatorStack_.top()[0] == '(') {
                    this->operatorStack_.pop(); // Pop the '('
                }
            } else if (ch == '*' && i + 1 < expression_.length() && expression_[i + 1] == '*') {
                std::string op = "**";
                while (!this->operatorStack_.empty() &&
                       precedence(this->operatorStack_.top()) >= precedence(op)) {
                    this->postfixQueue_.emplace(this->operatorStack_.top());
                    this->operatorStack_.pop();
                       }
                this->operatorStack_.emplace(op);
                ++i; // skip next '*'
            } // TODO ; add variable handling or symbol table handling here
            else if (!isspace(ch)) {  // skip whitespace
                while (!this->operatorStack_.empty() && precedence(this->operatorStack_.top()) >= precedence(std::string(1, ch))) {
                    this->postfixQueue_.emplace(this->operatorStack_.top());
                    this->operatorStack_.pop();
                }
                this->operatorStack_.emplace(1, ch);
            }
        }
        while (!this->operatorStack_.empty()) {
            this->postfixQueue_.emplace(this->operatorStack_.top());
            this->operatorStack_.pop();
        }
    }

    void evaluatePostfix() {
        size_t queueSize = postfixQueue_.size();
        for (size_t i = 0; i < queueSize; i++) {
            if (isNumeric(postfixQueue_.front())) {
                postfixStack_.emplace(postfixQueue_.front());
                postfixQueue_.pop();
            } else if (isUnaryOperator(postfixQueue_.front())) {
                std::string op = postfixQueue_.front();
                postfixQueue_.pop();
                int num = std::stoi(postfixStack_.top());
                if (op == "!") {
                    if (num == 0) postfixStack_.emplace("1");
                    else if (num == 1) postfixStack_.emplace("0");
                    else throw std::runtime_error("Invalid integer literal for logical not unary operator");
                }
            } else if (isOperator(postfixQueue_.front())) {
                std::string op = postfixQueue_.front();
                postfixQueue_.pop();
                if (op == "+") {
                    int right = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    int left = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    postfixStack_.emplace(std::to_string(left + right));
                } else if (op == "-") {
                    int right = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    int left = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    postfixStack_.emplace(std::to_string(left - right));
                } else if (op == "*") {
                    int right = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    int left = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    postfixStack_.emplace(std::to_string(left * right));
                } else if (op == "/") {
                    int right = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    int left = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    postfixStack_.emplace(std::to_string(left / right));
                } else if (op == "**") {
                    const int right = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    const int left = std::stoi(postfixStack_.top()); postfixStack_.pop();
                    postfixStack_.emplace(std::to_string(std::pow(left, right)));
                }
            }
        }
        postfixExpression_.expression = postfixStack_.top();
    }

private:
    std::string expression_;
    std::queue<std::string> postfixQueue_; // the postfix (output) of the converted expression is stored here
    std::stack<std::string> operatorStack_;
    std::stack<std::string> postfixStack_;
    Postfix postfixExpression_;
};


int main() {
    Evaluator eval("!0 + 2"); // ensure to validate expression before usage
    eval.generatePostfix();
    eval.evaluatePostfix();
    std::cout << eval.getPostfix().expression << std::endl;
    return 0;
}