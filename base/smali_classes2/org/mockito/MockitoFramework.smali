.class public interface abstract Lorg/mockito/MockitoFramework;
.super Ljava/lang/Object;
.source "MockitoFramework.java"


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/exceptions/misusing/RedundantListenerException;
        }
    .end annotation

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method

.method public abstract removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation
.end method
