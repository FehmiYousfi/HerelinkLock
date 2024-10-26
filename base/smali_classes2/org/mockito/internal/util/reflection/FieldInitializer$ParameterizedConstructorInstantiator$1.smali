.class Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;
.super Ljava/lang/Object;
.source "FieldInitializer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;


# direct methods
.method constructor <init>(Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->this$0:Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private countMockableParams(Ljava/lang/reflect/Constructor;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 243
    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 229
    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)I"
        }
    .end annotation

    .line 231
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0, p1}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->countMockableParams(Ljava/lang/reflect/Constructor;)I

    move-result p1

    .line 234
    invoke-direct {p0, p2}, Lorg/mockito/internal/util/reflection/FieldInitializer$ParameterizedConstructorInstantiator$1;->countMockableParams(Ljava/lang/reflect/Constructor;)I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return v0
.end method
