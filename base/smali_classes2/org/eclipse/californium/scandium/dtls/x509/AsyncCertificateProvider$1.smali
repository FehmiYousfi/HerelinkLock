.class Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;
.super Ljava/lang/Object;
.source "AsyncCertificateProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;->requestCertificateIdentity(Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;

.field final synthetic val$certificateKeyAlgorithms:Ljava/util/List;

.field final synthetic val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field final synthetic val$client:Z

.field final synthetic val$curves:Ljava/util/List;

.field final synthetic val$issuers:Ljava/util/List;

.field final synthetic val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

.field final synthetic val$signatureAndHashAlgorithms:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iput-boolean p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$client:Z

    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$issuers:Ljava/util/List;

    iput-object p5, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    iput-object p6, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$certificateKeyAlgorithms:Ljava/util/List;

    iput-object p7, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$signatureAndHashAlgorithms:Ljava/util/List;

    iput-object p8, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$curves:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 148
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-boolean v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$client:Z

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$issuers:Ljava/util/List;

    iget-object v4, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$serverNames:Lorg/eclipse/californium/scandium/util/ServerNames;

    iget-object v5, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$certificateKeyAlgorithms:Ljava/util/List;

    iget-object v6, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$signatureAndHashAlgorithms:Ljava/util/List;

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->val$curves:Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;->access$001(Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;Lorg/eclipse/californium/scandium/dtls/ConnectionId;ZLjava/util/List;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lorg/eclipse/californium/scandium/dtls/CertificateIdentityResult;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider$1;->this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;

    invoke-static {v1}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;->access$100(Lorg/eclipse/californium/scandium/dtls/x509/AsyncCertificateProvider;)Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/californium/scandium/dtls/HandshakeResultHandler;->apply(Lorg/eclipse/californium/scandium/dtls/HandshakeResult;)V

    return-void
.end method
