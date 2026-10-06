import InitE.FrontendStages.Globals.Output81
import InitE.FrontendStages.Declarations.Data81
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate65
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate81_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified81) =
        some globalOutput81 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal81 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified81) := by trivial
theorem globalException81_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified81) = none := by rfl
#print axioms globalTranslate81_eq
end InitE.FrontendStages.Declarations
