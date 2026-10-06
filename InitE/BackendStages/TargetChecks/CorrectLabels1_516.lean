import InitE.BackendStages.TargetChecks.CorrectLabels0_516
import InitE.BackendStages.TargetChecks.CorrectEncode0_516
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_516_eq : LabToTarget.sectionLabels 363536 Reencode0_516.lines [] = (364296, localLabels1_516) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 363536 364296 riscvConfig.encode
    Initial516.lines Reencode0_516.lines [] Reencode0_516_eq).trans
    (localLabels0_516_eq.trans (by kernel_rfl))
#print axioms localLabels1_516_eq
end InitE.BackendStages.TargetChecks.Correct
