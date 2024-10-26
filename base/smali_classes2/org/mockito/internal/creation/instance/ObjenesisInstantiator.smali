.class Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;
.super Ljava/lang/Object;
.source "ObjenesisInstantiator.java"

# interfaces
.implements Lorg/mockito/internal/creation/instance/Instantiator;


# instance fields
.field private final objenesis:Lorg/objenesis/ObjenesisStd;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/objenesis/ObjenesisStd;

    new-instance v1, Lorg/mockito/internal/configuration/GlobalConfiguration;

    invoke-direct {v1}, Lorg/mockito/internal/configuration/GlobalConfiguration;-><init>()V

    invoke-virtual {v1}, Lorg/mockito/internal/configuration/GlobalConfiguration;->enableClassCache()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/objenesis/ObjenesisStd;-><init>(Z)V

    iput-object v0, p0, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;->objenesis:Lorg/objenesis/ObjenesisStd;

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/mockito/internal/creation/instance/ObjenesisInstantiator;->objenesis:Lorg/objenesis/ObjenesisStd;

    invoke-virtual {v0, p1}, Lorg/objenesis/ObjenesisStd;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
