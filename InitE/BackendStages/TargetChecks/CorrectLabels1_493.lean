import InitE.BackendStages.TargetChecks.CorrectLabels0_493
import InitE.BackendStages.TargetChecks.CorrectEncode0_493
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_493
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_493_eq : LabToTarget.sectionLabels 347352 Reencode0_493.lines [] = (347384, localLabels1_493) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 347352 347384 riscvConfig.encode
    Initial493.lines Reencode0_493.lines [] Reencode0_493_eq).trans
    (localLabels0_493_eq.trans (by kernel_rfl))
#print axioms localLabels1_493_eq
end InitE.BackendStages.TargetChecks.Correct
