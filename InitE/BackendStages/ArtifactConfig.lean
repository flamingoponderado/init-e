import InitE.LiteralFacts
import InitE.CompilerConfigLiteral
import InitE.BackendComputation
import Flapjack.Compiler.Backend.RiscVConfig.Executable
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitE.BackendStages.ArtifactConfig
theorem config_eq :
    { RiscVConfig.pancakeRiscVBackendConfig with
      labConf := InitE.baselineLabConfig
      symbols := InitE.baselineLabConfig.secPosLen.map (fun (identifier, position, length) =>
        (lookupAny identifier (.ln : Spt Basis.Pure.MlString.MlString)
          (Basis.Pure.MlString.ofString "NOTFOUND"), position, length)) } =
      InitE.baselineConfigLiteral := by
  with_unfolding_all rfl
theorem lab_eq
    (labels : Spt (Spt Nat)) (ffis newFfis : List HolFfiName)
    (shmem : List LabToTarget.ShmemInfoNum) (symbols : List (Nat × Nat × Nat))
    (hl : labels = InitE.baselineLabConfig.labels)
    (hf : some (ffis ++ newFfis) = InitE.baselineLabConfig.ffiNames)
    (hm : shmem = InitE.baselineLabConfig.shmemExtra)
    (hs : symbols = InitE.baselineLabConfig.secPosLen) :
    { RiscVConfig.pancakeRiscVBackendConfig.labConf with
      labels := labels, pos := InitECandidate.nativeCode.length + 0,
      secPosLen := symbols, ffiNames := some (ffis ++ newFfis), shmemExtra := shmem } =
      InitE.baselineLabConfig := by
  rw [hl, hf, hm, hs, InitE.LiteralFacts.nativeCode_length]
  rfl
#print axioms config_eq
#print axioms lab_eq
end InitE.BackendStages.ArtifactConfig
