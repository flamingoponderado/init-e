import InitE.FrontendStages.Globals.Output899
import InitE.FrontendStages.Declarations.Data899
import InitE.FrontendStages.Globals.Context
import InitE.FrontendStages.Globals.Translate867
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
open Flapjack
theorem globalTranslate899_eq :
    InitE.GlobalsComputation.compiledFunction globalContext
      (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) =
        some globalOutput899 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem globalNonGlobal899 : InitE.GlobalsComputation.nonGlobal
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) := by trivial
theorem globalException899_eq : InitE.GlobalsComputation.exceptionDeclaration
    (InitE.GlobalsComputation.renameDeclaration globalStart globalNewStart simplified899) = none := by rfl
#print axioms globalTranslate899_eq
end InitE.FrontendStages.Declarations
