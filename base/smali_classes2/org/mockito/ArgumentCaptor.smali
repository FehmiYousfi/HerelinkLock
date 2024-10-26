.class public Lorg/mockito/ArgumentCaptor;
.super Ljava/lang/Object;
.source "ArgumentCaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/internal/matchers/CapturingMatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-direct {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;-><init>()V

    iput-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    .line 69
    iput-object p1, p0, Lorg/mockito/ArgumentCaptor;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static forClass(Ljava/lang/Class;)Lorg/mockito/ArgumentCaptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:TU;>(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Lorg/mockito/ArgumentCaptor<",
            "TU;>;"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/mockito/ArgumentCaptor;

    invoke-direct {v0, p0}, Lorg/mockito/ArgumentCaptor;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public capture()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-static {v0}, Lorg/mockito/Mockito;->argThat(Lorg/mockito/ArgumentMatcher;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;->getAllValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/mockito/ArgumentCaptor;->capturingMatcher:Lorg/mockito/internal/matchers/CapturingMatcher;

    invoke-virtual {v0}, Lorg/mockito/internal/matchers/CapturingMatcher;->getLastValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
