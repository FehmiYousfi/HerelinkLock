.class public final enum Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
.super Ljava/lang/Enum;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

.field public static final enum UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 356
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const/4 v1, 0x0

    const-string v2, "UNDEFINED"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 362
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const/4 v2, 0x1

    const-string v3, "UNRESOLVED"

    invoke-direct {v0, v3, v2}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 367
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const/4 v3, 0x2

    const-string v4, "RESOLVED"

    invoke-direct {v0, v4, v3}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    .line 350
    sget-object v4, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    aput-object v4, v0, v1

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNRESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    .line 350
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    .line 350
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0
.end method


# virtual methods
.method public isDefined()Z
    .locals 1

    .line 376
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 386
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
