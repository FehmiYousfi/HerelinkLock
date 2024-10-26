.class public interface abstract Lorg/mockito/junit/VerificationCollector;
.super Ljava/lang/Object;
.source "VerificationCollector.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract assertLazily()Lorg/mockito/junit/VerificationCollector;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract collectAndReport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/exceptions/base/MockitoAssertionError;
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
