import InitE.FrontendStages.Globals.Output839
import InitE.FrontendStages.Declarations.Data839
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate823
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate839_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified839) =
        some globalOutput839 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal839 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified839) := by trivial
theorem globalException839_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified839) = none := by rfl
#print axioms globalTranslate839_eq
end InitE.FrontendStages.Declarations
