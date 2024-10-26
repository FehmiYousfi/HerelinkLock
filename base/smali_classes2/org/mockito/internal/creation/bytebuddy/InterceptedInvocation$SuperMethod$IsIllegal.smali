.class public final enum Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;
.super Ljava/lang/Enum;
.source "InterceptedInvocation.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IsIllegal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;",
        ">;",
        "Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

.field public static final enum INSTANCE:Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 164
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->INSTANCE:Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    .line 162
    sget-object v2, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->INSTANCE:Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    aput-object v2, v0, v1

    sput-object v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->$VALUES:[Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;
    .locals 1

    .line 162
    const-class v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    return-object p0
.end method

.method public static values()[Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;
    .locals 1

    .line 162
    sget-object v0, Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->$VALUES:[Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    invoke-virtual {v0}, [Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mockito/internal/creation/bytebuddy/InterceptedInvocation$SuperMethod$IsIllegal;

    return-object v0
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public isInvokable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
