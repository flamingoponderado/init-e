import InitE.BackendStages.TargetChecks.CorrectLabels0_156
import InitE.BackendStages.TargetChecks.CorrectEncode0_156
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_156_eq : LabToTarget.sectionLabels 41724 Reencode0_156.lines [] = (41800, localLabels1_156) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 41724 41800 riscvConfig.encode
    Initial156.lines Reencode0_156.lines [] Reencode0_156_eq).trans
    (localLabels0_156_eq.trans (by kernel_rfl))
#print axioms localLabels1_156_eq
end InitE.BackendStages.TargetChecks.Correct
