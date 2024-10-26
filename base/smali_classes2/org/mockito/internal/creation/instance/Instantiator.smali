.class public interface abstract Lorg/mockito/internal/creation/instance/Instantiator;
.super Ljava/lang/Object;
.source "Instantiator.java"


# virtual methods
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mockito/internal/creation/instance/InstantiationException;
        }
    .end annotation
.end method
