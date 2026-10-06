import InitE.FrontendStages.Globals.Output120
import InitE.FrontendStages.Declarations.Data120
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate103
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate120_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified120) =
        some globalOutput120 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal120 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified120) := by trivial
theorem globalException120_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified120) = none := by rfl
#print axioms globalTranslate120_eq
end InitE.FrontendStages.Declarations
