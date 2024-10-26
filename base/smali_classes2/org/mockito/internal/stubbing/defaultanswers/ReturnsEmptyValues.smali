.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
.super Ljava/lang/Object;
.source "ReturnsEmptyValues.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bbb005f3cd1fb2bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 2

    .line 59
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lorg/mockito/mock/MockName;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mock for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isCompareToMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    const-class v0, Ljava/lang/Iterable;

    if-ne p1, v0, :cond_1

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 85
    :cond_1
    const-class v0, Ljava/util/Collection;

    if-ne p1, v0, :cond_2

    .line 86
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 87
    :cond_2
    const-class v0, Ljava/util/Set;

    if-ne p1, v0, :cond_3

    .line 88
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 89
    :cond_3
    const-class v0, Ljava/util/HashSet;

    if-ne p1, v0, :cond_4

    .line 90
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 91
    :cond_4
    const-class v0, Ljava/util/SortedSet;

    if-ne p1, v0, :cond_5

    .line 92
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 93
    :cond_5
    const-class v0, Ljava/util/TreeSet;

    if-ne p1, v0, :cond_6

    .line 94
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    return-object p1

    .line 95
    :cond_6
    const-class v0, Ljava/util/LinkedHashSet;

    if-ne p1, v0, :cond_7

    .line 96
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    .line 97
    :cond_7
    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_8

    .line 98
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 99
    :cond_8
    const-class v0, Ljava/util/LinkedList;

    if-ne p1, v0, :cond_9

    .line 100
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 101
    :cond_9
    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_a

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 103
    :cond_a
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_b

    .line 104
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 105
    :cond_b
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_c

    .line 106
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 107
    :cond_c
    const-class v0, Ljava/util/SortedMap;

    if-ne p1, v0, :cond_d

    .line 108
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1

    .line 109
    :cond_d
    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_e

    .line 110
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1

    .line 111
    :cond_e
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_f

    .line 112
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    .line 113
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Optional"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 114
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 115
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.OptionalDouble"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 116
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.OptionalInt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 118
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 119
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.OptionalLong"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 120
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 121
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.stream.Stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.stream.DoubleStream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 124
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyDoubleStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 125
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.stream.IntStream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyIntStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 127
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.util.stream.LongStream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 128
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyLongStream()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method
