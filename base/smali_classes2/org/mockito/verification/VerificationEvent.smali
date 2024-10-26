.class public interface abstract Lorg/mockito/verification/VerificationEvent;
.super Ljava/lang/Object;
.source "VerificationEvent.java"


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract getData()Lorg/mockito/internal/verification/api/VerificationData;
.end method

.method public abstract getMock()Ljava/lang/Object;
.end method

.method public abstract getMode()Lorg/mockito/verification/VerificationMode;
.end method

.method public abstract getVerificationError()Ljava/lang/Throwable;
.end method
