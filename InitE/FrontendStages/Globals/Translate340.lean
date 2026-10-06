import InitE.FrontendStages.Globals.Output340
import InitE.FrontendStages.Declarations.Data340
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate324
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate340_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) =
        some globalOutput340 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal340 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) := by trivial
theorem globalException340_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified340) = none := by rfl
#print axioms globalTranslate340_eq
end InitE.FrontendStages.Declarations
