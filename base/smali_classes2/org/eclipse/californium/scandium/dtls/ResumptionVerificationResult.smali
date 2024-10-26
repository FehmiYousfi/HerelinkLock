.class public final Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;
.super Lorg/eclipse/californium/scandium/dtls/HandshakeResult;
.source "ResumptionVerificationResult.java"


# instance fields
.field private final session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;


# direct methods
.method public constructor <init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Lorg/eclipse/californium/scandium/dtls/DTLSSession;Ljava/lang/Object;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p3}, Lorg/eclipse/californium/scandium/dtls/HandshakeResult;-><init>(Lorg/eclipse/californium/scandium/dtls/ConnectionId;Ljava/lang/Object;)V

    .line 45
    iput-object p2, p0, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    return-void
.end method


# virtual methods
.method public getDTLSSession()Lorg/eclipse/californium/scandium/dtls/DTLSSession;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/eclipse/californium/scandium/dtls/ResumptionVerificationResult;->session:Lorg/eclipse/californium/scandium/dtls/DTLSSession;

    return-object v0
.end method
