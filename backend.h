#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>
#include <QString>

class Backend : public QObject
{
    Q_OBJECT
    // Объявление свойства: имя text, доступное для чтения и записи, с сигналом уведомления
    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)

public:
    explicit Backend(QObject *parent = 0) : QObject(parent) {}

    QString text() const { return m_text; }
    void setText(const QString &text) {
        if (m_text != text) {
            m_text = text;
            emit textChanged();
        }
    }

signals:
    void textChanged();

    // Объявление слота, чтобы QML мог вызывать
public slots:
    void doSomethingFromQml(const QString &message) {
        // Обработка логики, вызванной из QML
        setText("QML said: " + message);
    }

private:
    QString m_text;
};

#endif // BACKEND_H
