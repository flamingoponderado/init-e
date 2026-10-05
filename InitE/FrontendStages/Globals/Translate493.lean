import InitE.FrontendStages.Globals.Output493
import InitE.FrontendStages.Declarations.Data493
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate477
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate493_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified493) =
        some globalOutput493 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal493 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified493) := by trivial
theorem globalException493_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified493) = none := by rfl
#print axioms globalTranslate493_eq
end InitE.FrontendStages.Declarations
