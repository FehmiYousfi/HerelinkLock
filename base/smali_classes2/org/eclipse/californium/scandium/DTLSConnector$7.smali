.class Lorg/eclipse/californium/scandium/DTLSConnector$7;
.super Ljava/lang/Object;
.source "DTLSConnector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/DTLSConnector;->init(Ljava/net/InetSocketAddress;Ljava/net/DatagramSocket;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/californium/scandium/dtls/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/DTLSConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/DTLSConnector;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lorg/eclipse/californium/scandium/DTLSConnector$7;->this$0:Lorg/eclipse/californium/scandium/DTLSConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1019
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Connection;

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/scandium/DTLSConnector$7;->compare(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/californium/scandium/dtls/Connection;Lorg/eclipse/californium/scandium/dtls/Connection;)I
    .locals 4

    .line 1023
    invoke-virtual {p1}, Lorg/eclipse/californium/scandium/dtls/Connection;->getStartNanos()Ljava/lang/Long;

    move-result-object p1

    .line 1024
    invoke-virtual {p2}, Lorg/eclipse/californium/scandium/dtls/Connection;->getStartNanos()Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1026
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_0

    return v0

    :cond_0
    if-gez p1, :cond_3

    return v1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    if-nez p2, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
