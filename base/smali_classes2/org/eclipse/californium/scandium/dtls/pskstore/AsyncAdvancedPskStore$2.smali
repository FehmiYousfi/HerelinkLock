.class Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;
.super Ljava/lang/Object;
.source "AsyncAdvancedPskStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->requestPskSecretResult(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)Lorg/eclipse/californium/scandium/dtls/PskSecretResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;

.field final synthetic val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field final synthetic val$hmacAlgorithm:Ljava/lang/String;

.field final synthetic val$identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

.field final synthetic val$other:Ljavax/crypto/SecretKey;

.field final synthetic val$randomSeed:[B

.field final synthetic val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

.field final synthetic val$useExtendedMasterSecret:Z


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->this$0:Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$hmacAlgorithm:Ljava/lang/String;

    iput-object p6, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$other:Ljavax/crypto/SecretKey;

    iput-object p7, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$randomSeed:[B

    iput-boolean p8, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$useExtendedMasterSecret:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 174
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->this$0:Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$identity:Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$hmacAlgorithm:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$other:Ljavax/crypto/SecretKey;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$randomSeed:[B

    iget-boolean v7, p0, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore$2;->val$useExtendedMasterSecret:Z

    invoke-static/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;->access$000(Lorg/eclipse/californium/scandium/dtls/pskstore/AsyncAdvancedPskStore;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Lorg/eclipse/californium/scandium/dtls/PskPublicInformation;Ljava/lang/String;Ljavax/crypto/SecretKey;[BZ)V

    return-void
.end method
