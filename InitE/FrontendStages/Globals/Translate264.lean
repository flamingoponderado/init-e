import InitE.FrontendStages.Globals.Output264
import InitE.FrontendStages.Declarations.Data264
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate242
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate264_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) =
        some globalOutput264 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal264 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) := by trivial
theorem globalException264_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified264) = none := by rfl
#print axioms globalTranslate264_eq
end InitE.FrontendStages.Declarations
