.class public Lorg/mockito/internal/verification/VerificationEventImpl;
.super Ljava/lang/Object;
.source "VerificationEventImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationEvent;


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final data:Lorg/mockito/internal/verification/api/VerificationData;

.field private final mock:Ljava/lang/Object;

.field private final mode:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/verification/api/VerificationData;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->mock:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->mode:Lorg/mockito/verification/VerificationMode;

    .line 17
    iput-object p3, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->data:Lorg/mockito/internal/verification/api/VerificationData;

    .line 18
    iput-object p4, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getData()Lorg/mockito/internal/verification/api/VerificationData;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->data:Lorg/mockito/internal/verification/api/VerificationData;

    return-object v0
.end method

.method public getMock()Ljava/lang/Object;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->mock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMode()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->mode:Lorg/mockito/verification/VerificationMode;

    return-object v0
.end method

.method public getVerificationError()Ljava/lang/Throwable;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationEventImpl;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
