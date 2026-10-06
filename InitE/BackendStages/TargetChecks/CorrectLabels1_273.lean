import InitE.BackendStages.TargetChecks.CorrectLabels0_273
import InitE.BackendStages.TargetChecks.CorrectEncode0_273
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_273_eq : LabToTarget.sectionLabels 169240 Reencode0_273.lines [] = (169564, localLabels1_273) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 169240 169564 riscvConfig.encode
    Initial273.lines Reencode0_273.lines [] Reencode0_273_eq).trans
    (localLabels0_273_eq.trans (by kernel_rfl))
#print axioms localLabels1_273_eq
end InitE.BackendStages.TargetChecks.Correct
