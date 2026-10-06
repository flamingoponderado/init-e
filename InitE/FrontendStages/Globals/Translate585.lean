import InitE.FrontendStages.Globals.Output585
import InitE.FrontendStages.Declarations.Data585
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate569
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate585_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified585) =
        some globalOutput585 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal585 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified585) := by trivial
theorem globalException585_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified585) = none := by rfl
#print axioms globalTranslate585_eq
end InitE.FrontendStages.Declarations
