.class public final enum Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;
.super Ljava/lang/Enum;
.source "AnnotationSource.java"

# interfaces
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;",
        ">;",
        "Lnet/bytebuddy/description/annotation/AnnotationSource;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

.field public static final enum INSTANCE:Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->INSTANCE:Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    .line 23
    sget-object v2, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->INSTANCE:Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;
    .locals 1

    .line 23
    const-class v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;
    .locals 1

    .line 23
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->$VALUES:[Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    invoke-virtual {v0}, [Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/description/annotation/AnnotationSource$Empty;

    return-object v0
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 32
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method
