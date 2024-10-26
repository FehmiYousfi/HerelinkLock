.class public Lorg/mockito/internal/verification/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final description:Ljava/lang/String;

.field private final verification:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mockito/internal/verification/Description;->verification:Lorg/mockito/verification/VerificationMode;

    .line 29
    iput-object p2, p0, Lorg/mockito/internal/verification/Description;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object p1

    return-object p1
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 2

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/verification/Description;->verification:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    :try_end_0
    .catch Lorg/mockito/exceptions/base/MockitoAssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lorg/mockito/exceptions/base/MockitoAssertionError;

    iget-object v1, p0, Lorg/mockito/internal/verification/Description;->description:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Lorg/mockito/exceptions/base/MockitoAssertionError;Ljava/lang/String;)V

    throw v0
.end method
