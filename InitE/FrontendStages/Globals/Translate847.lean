import InitE.FrontendStages.Globals.Output847
import InitE.FrontendStages.Declarations.Data847
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate831
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate847_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) =
        some globalOutput847 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal847 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) := by trivial
theorem globalException847_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified847) = none := by rfl
#print axioms globalTranslate847_eq
end InitE.FrontendStages.Declarations
