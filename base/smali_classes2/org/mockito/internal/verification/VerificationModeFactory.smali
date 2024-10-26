.class public Lorg/mockito/internal/verification/VerificationModeFactory;
.super Ljava/lang/Object;
.source "VerificationModeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 17
    new-instance v0, Lorg/mockito/internal/verification/AtLeast;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/AtLeast;-><init>(I)V

    return-object v0
.end method

.method public static atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 37
    new-instance v0, Lorg/mockito/internal/verification/AtMost;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/AtMost;-><init>(I)V

    return-object v0
.end method

.method public static calls(I)Lorg/mockito/internal/verification/Calls;
    .locals 1

    .line 29
    new-instance v0, Lorg/mockito/internal/verification/Calls;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/Calls;-><init>(I)V

    return-object v0
.end method

.method public static description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 48
    new-instance v0, Lorg/mockito/internal/verification/Description;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/verification/Description;-><init>(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;
    .locals 1

    .line 33
    new-instance v0, Lorg/mockito/internal/verification/NoMoreInteractions;

    invoke-direct {v0}, Lorg/mockito/internal/verification/NoMoreInteractions;-><init>()V

    return-object v0
.end method

.method public static only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 21
    new-instance v0, Lorg/mockito/internal/verification/Only;

    invoke-direct {v0}, Lorg/mockito/internal/verification/Only;-><init>()V

    return-object v0
.end method

.method public static times(I)Lorg/mockito/internal/verification/Times;
    .locals 1

    .line 25
    new-instance v0, Lorg/mockito/internal/verification/Times;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/Times;-><init>(I)V

    return-object v0
.end method
