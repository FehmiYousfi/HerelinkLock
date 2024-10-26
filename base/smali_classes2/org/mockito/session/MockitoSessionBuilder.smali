.class public interface abstract Lorg/mockito/session/MockitoSessionBuilder;
.super Ljava/lang/Object;
.source "MockitoSessionBuilder.java"


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract initMocks(Ljava/lang/Object;)Lorg/mockito/session/MockitoSessionBuilder;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract startMocking()Lorg/mockito/MockitoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/exceptions/misusing/UnfinishedMockingSessionException;
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract strictness(Lorg/mockito/quality/Strictness;)Lorg/mockito/session/MockitoSessionBuilder;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
