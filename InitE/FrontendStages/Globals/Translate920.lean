import InitE.FrontendStages.Globals.Output920
import InitE.FrontendStages.Declarations.Data920
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate904
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate920_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) =
        some globalOutput920 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal920 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) := by trivial
theorem globalException920_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified920) = none := by rfl
#print axioms globalTranslate920_eq
end InitE.FrontendStages.Declarations
