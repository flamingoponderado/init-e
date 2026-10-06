import InitE.BackendStages.TargetChecks.CorrectLabels0_492
import InitE.BackendStages.TargetChecks.CorrectEncode0_492
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_492
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_492_eq : LabToTarget.sectionLabels 347308 Reencode0_492.lines [] = (347352, localLabels1_492) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 347308 347352 riscvConfig.encode
    Initial492.lines Reencode0_492.lines [] Reencode0_492_eq).trans
    (localLabels0_492_eq.trans (by kernel_rfl))
#print axioms localLabels1_492_eq
end InitE.BackendStages.TargetChecks.Correct
