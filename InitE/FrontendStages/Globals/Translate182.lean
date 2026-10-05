import InitE.FrontendStages.Globals.Output182
import InitE.FrontendStages.Declarations.Data182
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate166
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate182_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) =
        some globalOutput182 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal182 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) := by trivial
theorem globalException182_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified182) = none := by rfl
#print axioms globalTranslate182_eq
end InitE.FrontendStages.Declarations
