.class public final enum Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
.super Ljava/lang/Enum;
.source "JavaModule.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaModule$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/utility/JavaModule$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Disabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;",
        ">;",
        "Lnet/bytebuddy/utility/JavaModule$Dispatcher;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

.field public static final enum INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 418
    new-instance v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    .line 413
    sget-object v2, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->INSTANCE:Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
    .locals 1

    .line 413
    const-class v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;
    .locals 1

    .line 413
    sget-object v0, Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->$VALUES:[Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    invoke-virtual {v0}, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/utility/JavaModule$Dispatcher$Disabled;

    return-object v0
.end method


# virtual methods
.method public addReads(Ljava/lang/instrument/Instrumentation;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 457
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canRead(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 452
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;
    .locals 1

    .line 432
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 442
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 447
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Current VM does not support modules"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAlive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNamed(Ljava/lang/Object;)Z
    .locals 1

    .line 437
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Current VM does not support modules"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public moduleOf(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation

    .line 427
    sget-object p1, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    return-object p1
.end method
