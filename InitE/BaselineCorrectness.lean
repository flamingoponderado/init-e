import InitE.CompilerFacts
import InitE.AllocationFacts
import InitE.StackLayout

/-! Compiler-based correctness after installation. The concrete installation
witness is a premise of this reusable theorem. Concrete source, artifact,
register, memory and bootstrap proofs instantiate it for the baseline. -/
namespace InitE
open Flapjack Flapjack.Pancake.Proofs.PanToTarget
open Flapjack.Compiler.Backend Flapjack.Compiler.Backend.BackendProof
open Flapjack.Compiler.Backend.RiscVConfig Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Basis.Pure.MlString

/-- Installation obligations, separated from proved facts about the source. -/
def BaselineInstallation (input : Guest.InputBlob)
    (out : RiscV.NativeSource.Output)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat) : Prop :=
  let s := sourceInitialState input
  isRiscvMachineConfig mc ∧
  out.artifact = some (bytes, bitmaps, c) ∧
  (0 : BitVec 64) < mc.target.getReg ms mc.lenReg ∧
  mc.target.getReg ms mc.lenReg < mc.target.getReg ms mc.ptr2Reg ∧
  mc.target.getReg ms mc.lenReg = s.baseAddr ∧
  heapLen = (mc.target.getReg ms mc.ptr2Reg + -1 * s.baseAddr).toNat / (64 / 8) ∧
  s.topAddr = s.baseAddr + (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 heapLen -
    BitVec.ofNat 64 (globalsWords * 64 / 8) ∧
  globalsWords ≤ heapLen ∧
  s.memaddrs = StackRemove.addresses (mc.target.getReg ms mc.lenReg) (heapLen - globalsWords) ∧
  holAligned (wordShiftAmount 64 + 1)
    (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg) = true ∧
  adj2 = mc.target.getReg ms mc.lenReg +
    (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
  adj4 = mc.target.getReg ms mc.len2Reg -
    (wordSemBytesInWord : BitVec 64) * BitVec.ofNat 64 StackRemove.maxStackAlloc ∧
  adj2 ≤ mc.target.getReg ms mc.ptr2Reg ∧
  mc.target.getReg ms mc.ptr2Reg ≤ adj4 ∧
  (mc.target.getReg ms mc.ptr2Reg + -1 * mc.target.getReg ms mc.lenReg).toNat ≤
    (wordSemBytesInWord : BitVec 64).toNat *
      (2 * DataToWord.maxHeapLimit 64 pancakeRiscVBackendConfig.dataConf - 1) ∧
  mc.target.config.bigEndian = s.be ∧
  panInstalled bytes cbspace bitmaps dataSp c.labConf.ffiNames
    (heapRegs pancakeRiscVBackendConfig.stackConf.regNames)
    mc c.labConf.shmemExtra ms (wlabWlocExact ∘ s.memory) s.memaddrs s.shMemaddrs ∧
  (readLimits mc.target.config pancakeRiscVBackendConfig mc ms).1 = installedLimits.1

/-- Reuse the upstream compiler theorem with the fixed source's static and
allocation premises discharged and the resource-limit relaxation removed. -/
theorem baseline_behaviour_eq (input : Guest.InputBlob) (out : RiscV.NativeSource.Output)
    (compiled : RiscV.NativeSource.compile Guest.guestSource = .ok out)
    (mc : MachineConfig 64 RiscV.L3.riscv_state RiscVProjection)
    (ms : RiscV.L3.riscv_state) (bytes : List (BitVec 8)) (bitmaps : List (BitVec 64))
    (c : Backend.Config) (heapLen : Nat) (adj2 adj4 : BitVec 64)
    (cbspace dataSp : Nat)
    (installed : BaselineInstallation input out mc ms bytes bitmaps c heapLen adj2 adj4 cbspace dataSp)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL mc (sourceFfi input) ms behaviour →
      behaviour = sourceBehaviour input := by
  have hd := compiledSourceDeclarations_eq out compiled
  have hb := nativeSourceLogicalBound_eq out hd
  obtain ⟨hmc, hart, hpositive, hsplit, hbase, hlen, htop, hglobals, hdomain,
    haligned, hadj2, hadj4, hleft, hright, hmax, hendian, hinstalled, hlimits⟩ := installed
  have correct := nativeSourceCompile_correct Guest.guestAst compiled Guest.guestParse_eq_ast
    mc bytes bitmaps c (some 538) (sourceInitialState input) ms globalsWords heapLen adj2 adj4
    (sourceFfi input) cbspace dataSp (ofString "main") hmc sourceHasMain
    ⟨hart, hb.symm, by simpa only [hd] using sourceGoodCode,
      by simpa only [hd] using sourceDistinctParams,
      by simpa only [hd] using sourceDistinctFunctions,
      rfl, rfl, rfl, by simpa only [hd] using sourceExceptionBound, rfl,
      hpositive, by simpa only [hd, globalsWords] using sourceGlobalsSize.symm,
      hsplit, hbase, by simpa only [hd] using source_globals_allocatable input,
      hlen, htop, hglobals, hdomain, haligned, hadj2, hadj4, hleft, hright, hmax,
      rfl, hendian, hinstalled, rfl, nonfail⟩
  have hprecise : optionLt (some 538)
      (some (readLimits mc.target.config pancakeRiscVBackendConfig mc ms).1) = true := by
    rw [hlimits]
    simpa only [optionLt, decide_eq_true_eq] using baseline_stack_bound_fits
  intro behaviour hbehaviour
  have h := correct behaviour hbehaviour
  simpa only [SemanticsPropsHOL.extendWithResourceLimitPrimeHOL, hprecise, if_true,
    sourceBehaviour] using h

end InitE
