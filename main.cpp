// main.cpp
#include <QApplication>
#include <QDeclarativeView>
#include <QDeclarativeContext>
#include "backend.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // 1. Создание объекта C++
    Backend backend;
    backend.setText("Default value from C++");

    // 2. Создание View
    QDeclarativeView view;

    // 3. Внедрение объекта C++ в контекст QML под именем "backend"
    view.rootContext()->setContextProperty("backend", &backend);

    // 4. Загрузка QML
    view.setSource(QUrl("qrc:/MainWindow.qml")); // Предполагается, что используется ресурс qrc
    view.setResizeMode(QDeclarativeView::SizeRootObjectToView);
    view.show();

    return app.exec();
}
