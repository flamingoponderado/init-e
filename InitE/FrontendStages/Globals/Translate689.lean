import InitE.FrontendStages.Globals.Output689
import InitE.FrontendStages.Declarations.Data689
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate673
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate689_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified689) =
        some globalOutput689 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal689 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified689) := by trivial
theorem globalException689_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified689) = none := by rfl
#print axioms globalTranslate689_eq
end InitE.FrontendStages.Declarations
