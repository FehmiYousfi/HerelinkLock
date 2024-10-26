.class public Lnet/bytebuddy/asm/Advice;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$OnNonDefaultValue;,
        Lnet/bytebuddy/asm/Advice$OnDefaultValue;,
        Lnet/bytebuddy/asm/Advice$NoExceptionHandler;,
        Lnet/bytebuddy/asm/Advice$WithCustomMapping;,
        Lnet/bytebuddy/asm/Advice$DynamicValue;,
        Lnet/bytebuddy/asm/Advice$Unused;,
        Lnet/bytebuddy/asm/Advice$StubValue;,
        Lnet/bytebuddy/asm/Advice$Enter;,
        Lnet/bytebuddy/asm/Advice$Origin;,
        Lnet/bytebuddy/asm/Advice$FieldValue;,
        Lnet/bytebuddy/asm/Advice$Thrown;,
        Lnet/bytebuddy/asm/Advice$Return;,
        Lnet/bytebuddy/asm/Advice$AllArguments;,
        Lnet/bytebuddy/asm/Advice$Argument;,
        Lnet/bytebuddy/asm/Advice$This;,
        Lnet/bytebuddy/asm/Advice$OnMethodExit;,
        Lnet/bytebuddy/asm/Advice$OnMethodEnter;,
        Lnet/bytebuddy/asm/Advice$Appender;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor;,
        Lnet/bytebuddy/asm/Advice$Dispatcher;,
        Lnet/bytebuddy/asm/Advice$StackMapFrameHandler;,
        Lnet/bytebuddy/asm/Advice$MethodSizeHandler;
    }
.end annotation


# static fields
.field private static final INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;


# instance fields
.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final delegate:Lnet/bytebuddy/implementation/Implementation;

.field private final exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

.field private final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 184
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v1, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    const-string v1, "inline"

    .line 185
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v2, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v2, "suppress"

    .line 186
    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v3, "skipOn"

    .line 187
    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v3}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v3, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v3, "prependLineNumber"

    .line 188
    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v0, v3}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 189
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    invoke-direct {v0, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 190
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 191
    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v1, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    const-string v1, "onThrowable"

    .line 192
    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    .locals 6

    .line 227
    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->THROWABLE:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/Removal;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/Implementation;)V

    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/Implementation;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    .line 245
    iput-object p2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    .line 246
    iput-object p3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 247
    iput-object p4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 248
    iput-object p5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    return-void
.end method

.method static synthetic access$1200()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/asm/Advice;->ON_THROWABLE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$1400()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SKIP_ON:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$1600()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$1700()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/asm/Advice;->PREPEND_LINE_NUMBER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$1800()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 138
    sget-object v0, Lnet/bytebuddy/asm/Advice;->SUPPRESS_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method private static locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;"
        }
    .end annotation

    .line 427
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 430
    :cond_0
    invoke-interface {p2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 432
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 435
    invoke-interface {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationDescription;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    const-class p1, Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;

    invoke-direct {p0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;

    invoke-direct {p0, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)V

    :goto_0
    return-object p0

    .line 433
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Advice for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not static"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Duplicate advice for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static to(Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;)Lnet/bytebuddy/asm/Advice;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 333
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 335
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v4, 0x0

    .line 336
    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v0, v2

    .line 334
    :goto_0
    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 348
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    new-instance p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, p0, p2}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Ljava/lang/Class;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 270
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, p1}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 282
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 361
    sget-object v0, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method protected static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 389
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .line 390
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 391
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    const-string v3, "No enter advice defined by "

    if-eqz v2, :cond_5

    .line 396
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 397
    const-class v5, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v6, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v5, v6, v1, v4}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v1

    goto :goto_1

    .line 399
    :cond_1
    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lnet/bytebuddy/jar/asm/ClassReader;

    .line 404
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    goto :goto_2

    :cond_2
    sget-object v2, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 403
    :goto_2
    invoke-interface {v0, p3, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v0

    .line 406
    new-instance v2, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lnet/bytebuddy/jar/asm/ClassReader;

    .line 407
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p2

    invoke-interface {p2}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p2

    invoke-direct {v3, p2}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    goto :goto_3

    :cond_3
    sget-object v3, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 406
    :goto_3
    invoke-interface {v1, p3, v3, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExitTo(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p2

    invoke-direct {v2, v0, p2}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    .line 410
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading class file of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " or "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 400
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 1

    .line 293
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnet/bytebuddy/asm/Advice;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;

    move-result-object p0

    return-object p0
.end method

.method protected static to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)Lnet/bytebuddy/asm/Advice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$OffsetMapping$Factory;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice;"
        }
    .end annotation

    .line 305
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    sget-object v1, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .line 306
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 307
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodEnter;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_ENTER:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v0, v3}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v0

    .line 308
    const-class v4, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    sget-object v5, Lnet/bytebuddy/asm/Advice;->INLINE_EXIT:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-static {v4, v5, v1, v3}, Lnet/bytebuddy/asm/Advice;->locate(Ljava/lang/Class;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 311
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No advice defined by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->isBinary()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 315
    :cond_3
    sget-object p1, Lnet/bytebuddy/asm/Advice;->UNDEFINED:Lnet/bytebuddy/jar/asm/ClassReader;

    goto :goto_3

    .line 314
    :cond_4
    :goto_2
    new-instance v2, Lnet/bytebuddy/jar/asm/ClassReader;

    .line 315
    invoke-interface {p0}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lnet/bytebuddy/dynamic/ClassFileLocator;->locate(Ljava/lang/String;)Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;

    move-result-object p1

    invoke-interface {p1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Resolution;->resolve()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lnet/bytebuddy/jar/asm/ClassReader;-><init>([B)V

    move-object p1, v2

    .line 317
    :goto_3
    invoke-interface {v0, p2, p1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-result-object v0

    .line 318
    new-instance v2, Lnet/bytebuddy/asm/Advice;

    invoke-interface {v1, p2, p1, v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;->asMethodExitTo(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 320
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading class file of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .locals 1

    .line 448
    new-instance v0, Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-direct {v0}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;-><init>()V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 2

    .line 539
    new-instance v0, Lnet/bytebuddy/asm/Advice$Appender;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v1, p1}, Lnet/bytebuddy/implementation/Implementation;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lnet/bytebuddy/asm/Advice$Appender;-><init>(Lnet/bytebuddy/asm/Advice;Lnet/bytebuddy/implementation/Implementation$Target;Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)V

    return-object v0
.end method

.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 137
    instance-of p1, p1, Lnet/bytebuddy/asm/Advice;

    return p1
.end method

.method protected doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 14

    move-object v0, p0

    .line 491
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->isPrependLineNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/visitor/LineNumberPrependingMethodVisitor;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    move-object v3, v2

    .line 494
    :goto_0
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    new-instance v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    move-object v2, v1

    move-object/from16 v4, p4

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;II)V

    return-object v1

    .line 504
    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    invoke-interface {v1}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    const-class v2, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    new-instance v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    move-object v2, v1

    move-object/from16 v4, p4

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithoutExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;II)V

    return-object v1

    .line 515
    :cond_2
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/description/method/MethodDescription;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_3

    .line 518
    new-instance v1, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;

    iget-object v5, v0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v6, v0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v9, v0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v10, v0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    .line 528
    invoke-interface {v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getThrowable()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v13

    move-object v2, v1

    move-object/from16 v4, p4

    move-object v7, p1

    move-object/from16 v8, p2

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v2 .. v13}, Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice$WithExceptionHandling;-><init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;IILnet/bytebuddy/description/type/TypeDescription;)V

    return-object v1

    .line 516
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot catch exception during constructor call for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 137
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/asm/Advice;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/bytebuddy/asm/Advice;

    invoke-virtual {p1, p0}, Lnet/bytebuddy/asm/Advice;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    if-nez v1, :cond_7

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_2
    return v2

    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v3, p1, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    if-nez v1, :cond_9

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_3
    return v2

    :cond_a
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    iget-object p1, p1, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    if-nez v1, :cond_b

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_b
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    :goto_4
    return v2

    :cond_c
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 137
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    mul-int/2addr v0, v2

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    mul-int/2addr v0, v2

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    mul-int/2addr v0, v2

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public on(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;"
        }
    .end annotation

    .line 458
    new-instance v0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->method(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 1

    .line 534
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/Implementation;->prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    move-result-object p1

    return-object p1
.end method

.method public withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;
    .locals 7

    .line 549
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice;
    .locals 7

    .line 573
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v5, p0, Lnet/bytebuddy/asm/Advice;->delegate:Lnet/bytebuddy/implementation/Implementation;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public withExceptionPrinting()Lnet/bytebuddy/asm/Advice;
    .locals 4

    .line 559
    :try_start_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    const-class v1, Ljava/lang/Throwable;

    const-string v2, "printStackTrace"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/implementation/bytecode/StackManipulation;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 561
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot locate Throwable::printStackTrace"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wrap(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    .line 583
    new-instance v6, Lnet/bytebuddy/asm/Advice;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;

    iget-object v3, p0, Lnet/bytebuddy/asm/Advice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/asm/Advice;->exceptionHandler:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/asm/Advice;-><init>(Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/implementation/Implementation;)V

    return-object v6
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;II)Lnet/bytebuddy/jar/asm/MethodVisitor;
    .locals 7

    .line 469
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isAbstract()Z

    move-result p5

    if-nez p5, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->isNative()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    .line 471
    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice;->doWrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;II)Lnet/bytebuddy/jar/asm/MethodVisitor;

    move-result-object p3

    :cond_1
    :goto_0
    return-object p3
.end method
