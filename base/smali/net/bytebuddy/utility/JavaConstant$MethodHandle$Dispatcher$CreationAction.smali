.class public final enum Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;
.super Ljava/lang/Enum;
.source "JavaConstant.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 814
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    .line 809
    sget-object v2, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;
    .locals 1

    .line 809
    const-class v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;
    .locals 1

    .line 809
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->$VALUES:[Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 809
    invoke-virtual {p0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$CreationAction;->run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$Initializable;
    .locals 34

    const-string v0, "lookupClass"

    const-string v1, "parameterArray"

    const-string v2, "returnType"

    const-string v3, "getMethodType"

    const-string v4, "getReferenceKind"

    const-string v5, "getDeclaringClass"

    const-string v6, "getName"

    const-string v7, "publicLookup"

    const-string v8, "java.lang.invoke.MethodHandles"

    const-string v9, "java.lang.invoke.MethodHandleInfo"

    const/4 v11, 0x0

    .line 821
    :try_start_0
    new-instance v22, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 822
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v14, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v6, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    .line 823
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v15, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v5, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 824
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-array v10, v11, [Ljava/lang/Class;

    invoke-virtual {v12, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 825
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    sget-object v10, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 826
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    sget-object v10, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 827
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v1, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    sget-object v10, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 828
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v10

    new-array v12, v11, [Ljava/lang/Class;

    invoke-virtual {v10, v0, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    sget-object v10, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 829
    invoke-virtual {v10}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v10

    const-string v12, "revealDirect"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v23, v0

    const/4 v11, 0x1

    :try_start_1
    new-array v0, v11, [Ljava/lang/Class;

    sget-object v11, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v11}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v11

    const/16 v21, 0x0

    aput-object v11, v0, v21

    invoke-virtual {v10, v12, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v21

    move-object/from16 v12, v22

    invoke-direct/range {v12 .. v21}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava8CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v22

    :catch_0
    move-object/from16 v23, v0

    .line 831
    :catch_1
    :try_start_2
    new-instance v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    .line 832
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Class;

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v26

    .line 833
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Class;

    invoke-virtual {v6, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v27

    .line 834
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 835
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Class;

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v29

    sget-object v3, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 836
    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v30

    sget-object v2, Lnet/bytebuddy/utility/JavaType;->METHOD_TYPE:Lnet/bytebuddy/utility/JavaType;

    .line 837
    invoke-virtual {v2}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v31

    sget-object v1, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    .line 838
    invoke-virtual {v1}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Class;

    move-object/from16 v3, v23

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v32

    .line 839
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v3}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v33

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v33}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForJava7CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 842
    :catch_2
    sget-object v0, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/utility/JavaConstant$MethodHandle$Dispatcher$ForLegacyVm;

    return-object v0
.end method
