.class Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer$1;
.super Ljava/lang/Object;
.source "Handshaker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/californium/scandium/dtls/Record;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer$1;->this$1:Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 585
    check-cast p1, Lorg/eclipse/californium/scandium/dtls/Record;

    check-cast p2, Lorg/eclipse/californium/scandium/dtls/Record;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker$InboundMessageBuffer$1;->compare(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I
    .locals 0

    .line 589
    invoke-static {p1, p2}, Lorg/eclipse/californium/scandium/dtls/Handshaker;->access$100(Lorg/eclipse/californium/scandium/dtls/Record;Lorg/eclipse/californium/scandium/dtls/Record;)I

    move-result p1

    return p1
.end method
