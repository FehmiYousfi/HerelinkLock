.class public final enum Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
.super Ljava/lang/Enum;
.source "ClassInjector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 972
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    .line 967
    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 967
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
    .locals 1

    .line 967
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;
    .locals 1

    .line 967
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->$VALUES:[Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 967
    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$Creator;->run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher;
    .locals 9

    .line 978
    :try_start_0
    sget-object v0, Lnet/bytebuddy/utility/JavaType;->METHOD_HANDLES_LOOKUP:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaType;->load()Ljava/lang/Class;

    move-result-object v0

    .line 979
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;

    const-string v2, "lookupClass"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "lookupModes"

    new-array v5, v3, [Ljava/lang/Class;

    .line 980
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "dropLookupMode"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    .line 981
    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "defineClass"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v8, [B

    aput-object v8, v6, v3

    .line 982
    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {v1, v2, v4, v5, v0}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForJava9CapableVm;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 984
    :catch_0
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingLookup$Dispatcher$ForLegacyVm;

    return-object v0
.end method
