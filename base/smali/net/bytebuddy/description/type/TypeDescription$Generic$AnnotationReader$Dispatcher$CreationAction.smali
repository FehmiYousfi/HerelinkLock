.class public final enum Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "TypeDescription.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2201
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    .line 2196
    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;
    .locals 1

    .line 2196
    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;
    .locals 1

    .line 2196
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 2196
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$CreationAction;->run()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher;
    .locals 11

    const-string v0, "java.lang.reflect.Executable"

    .line 2206
    :try_start_0
    new-instance v10, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    const-class v1, Ljava/lang/Class;

    const-string v2, "getAnnotatedSuperclass"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v1, Ljava/lang/Class;

    const-string v4, "getAnnotatedInterfaces"

    new-array v5, v3, [Ljava/lang/Class;

    .line 2207
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-class v1, Ljava/lang/reflect/Field;

    const-string v5, "getAnnotatedType"

    new-array v6, v3, [Ljava/lang/Class;

    .line 2208
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-class v1, Ljava/lang/reflect/Method;

    const-string v6, "getAnnotatedReturnType"

    new-array v7, v3, [Ljava/lang/Class;

    .line 2209
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2210
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v7, "getAnnotatedParameterTypes"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 2211
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v8, "getAnnotatedExceptionTypes"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 2212
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAnnotatedReceiverType"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "java.lang.reflect.AnnotatedType"

    .line 2213
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v9, "getType"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v1, v10

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 2217
    :catch_0
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForLegacyVm;

    return-object v0

    :catch_1
    move-exception v0

    .line 2215
    throw v0
.end method
