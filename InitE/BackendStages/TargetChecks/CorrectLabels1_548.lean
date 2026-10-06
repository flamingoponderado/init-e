import InitE.BackendStages.TargetChecks.CorrectLabels0_548
import InitE.BackendStages.TargetChecks.CorrectEncode0_548
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_548
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_548_eq : LabToTarget.sectionLabels 388156 Reencode0_548.lines [] = (392032, localLabels1_548) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 388156 392032 riscvConfig.encode
    Initial548.lines Reencode0_548.lines [] Reencode0_548_eq).trans
    (localLabels0_548_eq.trans (by kernel_rfl))
#print axioms localLabels1_548_eq
end InitE.BackendStages.TargetChecks.Correct
