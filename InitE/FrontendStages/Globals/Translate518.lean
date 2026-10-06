import InitE.FrontendStages.Globals.Output518
import InitE.FrontendStages.Declarations.Data518
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate502
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate518_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) =
        some globalOutput518 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal518 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) := by trivial
theorem globalException518_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified518) = none := by rfl
#print axioms globalTranslate518_eq
end InitE.FrontendStages.Declarations
