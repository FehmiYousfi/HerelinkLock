.class public abstract Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;
.super Lnet/bytebuddy/implementation/InvokeDynamic;
.source "InvokeDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AbstractDelegator"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "*>;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;",
            "Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;",
            ")V"
        }
    .end annotation

    .line 2373
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/implementation/InvokeDynamic;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider;Lnet/bytebuddy/implementation/InvokeDynamic$TerminationHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V

    return-void
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 1

    .line 2520
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;

    move-result-object p1

    return-object p1
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 1

    .line 2530
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object p1

    return-object p1
.end method

.method protected abstract materialize()Lnet/bytebuddy/implementation/InvokeDynamic;
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    .line 2525
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withArgument(I)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 1

    .line 2465
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withArgument(I)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public varargs withArgument([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2460
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withArgument([I)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 1

    .line 2515
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)Lnet/bytebuddy/implementation/Implementation$Composable;

    move-result-object p1

    return-object p1
.end method

.method public varargs withBooleanValue([Z)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2385
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withBooleanValue([Z)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withByteValue([B)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2390
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withByteValue([B)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withCharacterValue([C)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2400
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withCharacterValue([C)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withDoubleValue([D)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2420
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withDoubleValue([D)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withEnumeration([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2495
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withEnumeration([Lnet/bytebuddy/description/enumeration/EnumerationDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 1

    .line 2505
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField(Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 1

    .line 2510
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField(Ljava/lang/String;Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public varargs withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2500
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField(Lnet/bytebuddy/dynamic/scaffold/FieldLocator$Factory;[Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withField([Ljava/lang/String;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFloatValue([F)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2415
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withFloatValue([F)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withImplicitAndMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2485
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/InvokeDynamic;->withImplicitAndMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    return-object v0
.end method

.method public varargs withInstance([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2445
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withInstance([Lnet/bytebuddy/utility/JavaConstant;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withIntegerValue([I)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2405
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withIntegerValue([I)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withLongValue([J)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2410
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withLongValue([J)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2480
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/InvokeDynamic;->withMethodArguments()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    return-object v0
.end method

.method public varargs withNullValue([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic;"
        }
    .end annotation

    .line 2450
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withNullValue([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2455
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withNullValue([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public withReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;
    .locals 1

    .line 2430
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withReference(Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic$WithImplicitType;

    move-result-object p1

    return-object p1
.end method

.method public varargs withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2435
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withReference([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withShortValue([S)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2395
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withShortValue([S)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withThis([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/InvokeDynamic;"
        }
    .end annotation

    .line 2470
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withThis([Ljava/lang/Class;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2475
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withThis([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withType([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2440
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withType([Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method

.method public varargs withValue([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;
    .locals 1

    .line 2425
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/InvokeDynamic$AbstractDelegator;->materialize()Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/bytebuddy/implementation/InvokeDynamic;->withValue([Ljava/lang/Object;)Lnet/bytebuddy/implementation/InvokeDynamic;

    move-result-object p1

    return-object p1
.end method
