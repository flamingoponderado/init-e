import InitE.FrontendStages.Globals.Output673
import InitE.FrontendStages.Declarations.Data673
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate642
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate673_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified673) =
        some globalOutput673 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal673 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified673) := by trivial
theorem globalException673_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified673) = none := by rfl
#print axioms globalTranslate673_eq
end InitE.FrontendStages.Declarations
