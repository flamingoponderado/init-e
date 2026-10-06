import InitE.FrontendStages.Globals.Output907
import InitE.FrontendStages.Declarations.Data907
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate874
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate907_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) =
        some globalOutput907 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal907 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) := by trivial
theorem globalException907_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified907) = none := by rfl
#print axioms globalTranslate907_eq
end InitE.FrontendStages.Declarations
