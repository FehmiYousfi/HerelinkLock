.class public Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;
.super Ljava/lang/Object;
.source "InjectMocksScanner.java"


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->clazz:Ljava/lang/Class;

    return-void
.end method

.method private static varargs assertNoAnnotations(Ljava/lang/reflect/Field;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 63
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lorg/mockito/InjectMocks;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/mockito/internal/exceptions/Reporter;->unsupportedCombinationOfAnnotations(Ljava/lang/String;Ljava/lang/String;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private scan()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    iget-object v1, p0, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 53
    const-class v6, Lorg/mockito/InjectMocks;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 54
    const-class v7, Lorg/mockito/Mock;

    aput-object v7, v6, v3

    const-class v7, Lorg/mockito/Captor;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->assertNoAnnotations(Ljava/lang/reflect/Field;[Ljava/lang/Class;)V

    .line 55
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addTo(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/mockito/internal/configuration/injection/scanner/InjectMocksScanner;->scan()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
