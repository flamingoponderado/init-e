import InitE.FrontendStages.Globals.Output540
import InitE.FrontendStages.Declarations.Data540
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate524
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate540_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified540) =
        some globalOutput540 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal540 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified540) := by trivial
theorem globalException540_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified540) = none := by rfl
#print axioms globalTranslate540_eq
end InitE.FrontendStages.Declarations
