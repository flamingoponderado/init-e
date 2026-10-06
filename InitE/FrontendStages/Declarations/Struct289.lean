import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.StructKernelComputation
import InitE.FrontendStages.Declarations.Data289
import InitE.StructComputation
import InitE.FrontendStages.Declarations.Struct273
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem struct289_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :
    InitE.StructComputation.compileDeclaration context finalContext simplified289 = some simplified289 := by
  apply InitE.StructKernelComputation.declaration_identity
  change InitE.StructKernelComputation.declarationFree (Flapjack.Pancake.PanLang.declToHOL simplifiedData289) = true
  rw [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms struct289_eq
end InitE.FrontendStages.Declarations
