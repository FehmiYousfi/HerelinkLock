.class Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;
.super Ljava/lang/Object;
.source "AsyncNewAdvancedCertificateVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->verifyCertificate(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)Lorg/eclipse/californium/scandium/dtls/CertificateVerificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;

.field final synthetic val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

.field final synthetic val$clientUsage:Z

.field final synthetic val$message:Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

.field final synthetic val$remotePeer:Ljava/net/InetSocketAddress;

.field final synthetic val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

.field final synthetic val$truncateCertificatePath:Z

.field final synthetic val$verifySubject:Z


# direct methods
.method constructor <init>(Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;

    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iput-object p3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

    iput-object p4, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$remotePeer:Ljava/net/InetSocketAddress;

    iput-boolean p5, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$clientUsage:Z

    iput-boolean p6, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$verifySubject:Z

    iput-boolean p7, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$truncateCertificatePath:Z

    iput-object p8, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$message:Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 132
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->this$0:Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;

    iget-object v1, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$cid:Lorg/eclipse/californium/scandium/dtls/ConnectionId;

    iget-object v2, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$serverName:Lorg/eclipse/californium/scandium/util/ServerNames;

    iget-object v3, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$remotePeer:Ljava/net/InetSocketAddress;

    iget-boolean v4, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$clientUsage:Z

    iget-boolean v5, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$verifySubject:Z

    iget-boolean v6, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$truncateCertificatePath:Z

    iget-object v7, p0, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier$1;->val$message:Lorg/eclipse/californium/scandium/dtls/CertificateMessage;

    invoke-static/range {v0 .. v7}, Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;->access$000(Lorg/eclipse/californium/scandium/dtls/x509/AsyncNewAdvancedCertificateVerifier;Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/util/ServerNames;Ljava/net/InetSocketAddress;ZZZLorg/eclipse/californium/scandium/dtls/CertificateMessage;)V

    return-void
.end method
