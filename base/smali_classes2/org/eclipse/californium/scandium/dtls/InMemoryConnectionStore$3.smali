.class Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;
.super Ljava/lang/Object;
.source "InMemoryConnectionStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->addToEstablishedConnections(Lorg/eclipse/californium/scandium/dtls/SessionId;Lorg/eclipse/californium/scandium/dtls/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

.field final synthetic val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;Lorg/eclipse/californium/scandium/dtls/Connection;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 599
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;->this$0:Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore$3;->val$previous:Lorg/eclipse/californium/scandium/dtls/Connection;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/californium/scandium/dtls/InMemoryConnectionStore;->remove(Lorg/eclipse/californium/scandium/dtls/Connection;Z)Z

    return-void
.end method
