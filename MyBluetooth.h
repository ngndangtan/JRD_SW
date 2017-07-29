#ifndef MYBLUETOOTH_H
#define MYBLUETOOTH_H

#include <QObject>
#include <QBluetoothDeviceDiscoveryAgent>
#include <QBluetoothSocket>

class MyBluetooth : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString RcvMsg READ RcvMsg NOTIFY RcvMsgChanged)
    Q_PROPERTY(QString BtAddress READ BtAddress NOTIFY BtAddressChanged)
    Q_PROPERTY(int BtPosition READ BtPosition NOTIFY BtPositionChanged)
public:
    explicit MyBluetooth(QWidget *parent = 0);
    ~MyBluetooth();
    QString RcvMsg() const;
    QString BtAddress() const;
    int BtPosition() const;

public slots:
    void startServer();
    void write(const QString message);
    void deviceDiscovered(const QBluetoothDeviceInfo &device);
    void msgReceived();
    void socketConnected();
    void socketDisconnect();
    void socketError(QBluetoothSocket::SocketError);
    void connectSocket(const QString address);

Q_SIGNALS:
    void deviceDiscovered(const QString address);
    void RcvMsgChanged();
    void BtAddressChanged();
    void BtPositionChanged();

private:
    QBluetoothDeviceDiscoveryAgent *agent;
    QBluetoothSocket *socket;
    QString m_BtAddress;
    QString m_RcvMsg;
    int m_BtPosition;
};

#endif // MYBLUETOOTH_H
