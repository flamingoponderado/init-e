import InitE.LoopWordComputation
import InitE.FrontendStages.Word.Variables649
import InitE.WordStages.Source713
import InitE.FrontendStages.Word.Checkpoints649.Data.Chunk015
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word.Checkpoints649
@[irreducible, cbv_opaque] def output6144 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6143)).val
theorem output6144_def : output6144 = (.seq output39 output6143) := by
  unfold output6144
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6145 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6144)).val
theorem output6145_def : output6145 = (output6144) := by
  unfold output6145
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6146 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6133 output6145)).val
theorem output6146_def : output6146 = (.seq output6133 output6145) := by
  unfold output6146
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6147 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6146)).val
theorem output6147_def : output6147 = (output6146) := by
  unfold output6147
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6148 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3688#64]))).val
theorem output6148_def : output6148 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3688#64])) := by
  unfold output6148
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6149 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6148)).val
theorem output6149_def : output6149 = (output6148) := by
  unfold output6149
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6150 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7755485098777620407#64))).val
theorem output6150_def : output6150 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7755485098777620407#64)) := by
  unfold output6150
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6151 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6150)).val
theorem output6151_def : output6151 = (output6150) := by
  unfold output6151
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6152 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6151 output87)).val
theorem output6152_def : output6152 = (.seq output6151 output87) := by
  unfold output6152
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6153 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6152)).val
theorem output6153_def : output6153 = (output6152) := by
  unfold output6153
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6154 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6153)).val
theorem output6154_def : output6154 = (.seq output39 output6153) := by
  unfold output6154
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6155 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6154)).val
theorem output6155_def : output6155 = (output6154) := by
  unfold output6155
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6156 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6149 output6155)).val
theorem output6156_def : output6156 = (.seq output6149 output6155) := by
  unfold output6156
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6157 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6156)).val
theorem output6157_def : output6157 = (output6156) := by
  unfold output6157
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6158 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6157)).val
theorem output6158_def : output6158 = (.seq output39 output6157) := by
  unfold output6158
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6159 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6158)).val
theorem output6159_def : output6159 = (output6158) := by
  unfold output6159
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6160 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6147 output6159)).val
theorem output6160_def : output6160 = (.seq output6147 output6159) := by
  unfold output6160
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6161 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6160)).val
theorem output6161_def : output6161 = (output6160) := by
  unfold output6161
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6162 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3696#64]))).val
theorem output6162_def : output6162 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3696#64])) := by
  unfold output6162
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6163 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6162)).val
theorem output6163_def : output6163 = (output6162) := by
  unfold output6163
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6164 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15684647020317539556#64))).val
theorem output6164_def : output6164 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15684647020317539556#64)) := by
  unfold output6164
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6165 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6164)).val
theorem output6165_def : output6165 = (output6164) := by
  unfold output6165
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6166 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6165 output87)).val
theorem output6166_def : output6166 = (.seq output6165 output87) := by
  unfold output6166
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6167 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6166)).val
theorem output6167_def : output6167 = (output6166) := by
  unfold output6167
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6168 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6167)).val
theorem output6168_def : output6168 = (.seq output39 output6167) := by
  unfold output6168
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6169 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6168)).val
theorem output6169_def : output6169 = (output6168) := by
  unfold output6169
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6170 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6163 output6169)).val
theorem output6170_def : output6170 = (.seq output6163 output6169) := by
  unfold output6170
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6171 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6170)).val
theorem output6171_def : output6171 = (output6170) := by
  unfold output6171
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6172 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6171)).val
theorem output6172_def : output6172 = (.seq output39 output6171) := by
  unfold output6172
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6173 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6172)).val
theorem output6173_def : output6173 = (output6172) := by
  unfold output6173
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6174 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6161 output6173)).val
theorem output6174_def : output6174 = (.seq output6161 output6173) := by
  unfold output6174
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6175 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6174)).val
theorem output6175_def : output6175 = (output6174) := by
  unfold output6175
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6176 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3704#64]))).val
theorem output6176_def : output6176 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3704#64])) := by
  unfold output6176
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6177 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6176)).val
theorem output6177_def : output6177 = (output6176) := by
  unfold output6177
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6178 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6802473390048830824#64))).val
theorem output6178_def : output6178 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6802473390048830824#64)) := by
  unfold output6178
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6179 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6178)).val
theorem output6179_def : output6179 = (output6178) := by
  unfold output6179
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6180 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6179 output87)).val
theorem output6180_def : output6180 = (.seq output6179 output87) := by
  unfold output6180
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6181 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6180)).val
theorem output6181_def : output6181 = (output6180) := by
  unfold output6181
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6182 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6181)).val
theorem output6182_def : output6182 = (.seq output39 output6181) := by
  unfold output6182
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6183 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6182)).val
theorem output6183_def : output6183 = (output6182) := by
  unfold output6183
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6184 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6177 output6183)).val
theorem output6184_def : output6184 = (.seq output6177 output6183) := by
  unfold output6184
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6185 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6184)).val
theorem output6185_def : output6185 = (output6184) := by
  unfold output6185
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6186 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6185)).val
theorem output6186_def : output6186 = (.seq output39 output6185) := by
  unfold output6186
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6187 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6186)).val
theorem output6187_def : output6187 = (output6186) := by
  unfold output6187
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6188 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6175 output6187)).val
theorem output6188_def : output6188 = (.seq output6175 output6187) := by
  unfold output6188
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6189 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6188)).val
theorem output6189_def : output6189 = (output6188) := by
  unfold output6189
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6190 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3712#64]))).val
theorem output6190_def : output6190 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3712#64])) := by
  unfold output6190
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6191 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6190)).val
theorem output6191_def : output6191 = (output6190) := by
  unfold output6191
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6192 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 189531577938912252#64))).val
theorem output6192_def : output6192 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 189531577938912252#64)) := by
  unfold output6192
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6193 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6192)).val
theorem output6193_def : output6193 = (output6192) := by
  unfold output6193
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6194 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6193 output87)).val
theorem output6194_def : output6194 = (.seq output6193 output87) := by
  unfold output6194
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6195 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6194)).val
theorem output6195_def : output6195 = (output6194) := by
  unfold output6195
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6196 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6195)).val
theorem output6196_def : output6196 = (.seq output39 output6195) := by
  unfold output6196
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6197 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6196)).val
theorem output6197_def : output6197 = (output6196) := by
  unfold output6197
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6198 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6191 output6197)).val
theorem output6198_def : output6198 = (.seq output6191 output6197) := by
  unfold output6198
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6199 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6198)).val
theorem output6199_def : output6199 = (output6198) := by
  unfold output6199
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6200 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6199)).val
theorem output6200_def : output6200 = (.seq output39 output6199) := by
  unfold output6200
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6201 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6200)).val
theorem output6201_def : output6201 = (output6200) := by
  unfold output6201
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6202 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6189 output6201)).val
theorem output6202_def : output6202 = (.seq output6189 output6201) := by
  unfold output6202
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6203 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6202)).val
theorem output6203_def : output6203 = (output6202) := by
  unfold output6203
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6204 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3720#64]))).val
theorem output6204_def : output6204 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3720#64])) := by
  unfold output6204
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6205 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6204)).val
theorem output6205_def : output6205 = (output6204) := by
  unfold output6205
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6206 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 414658151749832465#64))).val
theorem output6206_def : output6206 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 414658151749832465#64)) := by
  unfold output6206
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6207 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6206)).val
theorem output6207_def : output6207 = (output6206) := by
  unfold output6207
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6208 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6207 output87)).val
theorem output6208_def : output6208 = (.seq output6207 output87) := by
  unfold output6208
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6209 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6208)).val
theorem output6209_def : output6209 = (output6208) := by
  unfold output6209
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6210 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6209)).val
theorem output6210_def : output6210 = (.seq output39 output6209) := by
  unfold output6210
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6211 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6210)).val
theorem output6211_def : output6211 = (output6210) := by
  unfold output6211
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6212 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6205 output6211)).val
theorem output6212_def : output6212 = (.seq output6205 output6211) := by
  unfold output6212
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6213 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6212)).val
theorem output6213_def : output6213 = (output6212) := by
  unfold output6213
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6214 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6213)).val
theorem output6214_def : output6214 = (.seq output39 output6213) := by
  unfold output6214
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6215 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6214)).val
theorem output6215_def : output6215 = (output6214) := by
  unfold output6215
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6216 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6203 output6215)).val
theorem output6216_def : output6216 = (.seq output6203 output6215) := by
  unfold output6216
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6217 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6216)).val
theorem output6217_def : output6217 = (output6216) := by
  unfold output6217
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6218 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3728#64]))).val
theorem output6218_def : output6218 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3728#64])) := by
  unfold output6218
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6219 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6218)).val
theorem output6219_def : output6219 = (output6218) := by
  unfold output6219
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6220 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 338991247778166276#64))).val
theorem output6220_def : output6220 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 338991247778166276#64)) := by
  unfold output6220
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6221 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6220)).val
theorem output6221_def : output6221 = (output6220) := by
  unfold output6221
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6222 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6221 output87)).val
theorem output6222_def : output6222 = (.seq output6221 output87) := by
  unfold output6222
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6223 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6222)).val
theorem output6223_def : output6223 = (output6222) := by
  unfold output6223
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6224 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6223)).val
theorem output6224_def : output6224 = (.seq output39 output6223) := by
  unfold output6224
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6225 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6224)).val
theorem output6225_def : output6225 = (output6224) := by
  unfold output6225
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6226 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6219 output6225)).val
theorem output6226_def : output6226 = (.seq output6219 output6225) := by
  unfold output6226
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6227 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6226)).val
theorem output6227_def : output6227 = (output6226) := by
  unfold output6227
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6228 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6227)).val
theorem output6228_def : output6228 = (.seq output39 output6227) := by
  unfold output6228
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6229 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6228)).val
theorem output6229_def : output6229 = (output6228) := by
  unfold output6229
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6230 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6217 output6229)).val
theorem output6230_def : output6230 = (.seq output6217 output6229) := by
  unfold output6230
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6231 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6230)).val
theorem output6231_def : output6231 = (output6230) := by
  unfold output6231
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6232 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3736#64]))).val
theorem output6232_def : output6232 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3736#64])) := by
  unfold output6232
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6233 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6232)).val
theorem output6233_def : output6233 = (output6232) := by
  unfold output6233
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6234 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13142913832013798519#64))).val
theorem output6234_def : output6234 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13142913832013798519#64)) := by
  unfold output6234
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6235 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6234)).val
theorem output6235_def : output6235 = (output6234) := by
  unfold output6235
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6236 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6235 output87)).val
theorem output6236_def : output6236 = (.seq output6235 output87) := by
  unfold output6236
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6237 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6236)).val
theorem output6237_def : output6237 = (output6236) := by
  unfold output6237
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6238 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6237)).val
theorem output6238_def : output6238 = (.seq output39 output6237) := by
  unfold output6238
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6239 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6238)).val
theorem output6239_def : output6239 = (output6238) := by
  unfold output6239
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6240 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6233 output6239)).val
theorem output6240_def : output6240 = (.seq output6233 output6239) := by
  unfold output6240
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6241 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6240)).val
theorem output6241_def : output6241 = (output6240) := by
  unfold output6241
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6242 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6241)).val
theorem output6242_def : output6242 = (.seq output39 output6241) := by
  unfold output6242
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6243 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6242)).val
theorem output6243_def : output6243 = (output6242) := by
  unfold output6243
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6244 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6231 output6243)).val
theorem output6244_def : output6244 = (.seq output6231 output6243) := by
  unfold output6244
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6245 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6244)).val
theorem output6245_def : output6245 = (output6244) := by
  unfold output6245
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6246 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3744#64]))).val
theorem output6246_def : output6246 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3744#64])) := by
  unfold output6246
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6247 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6246)).val
theorem output6247_def : output6247 = (output6246) := by
  unfold output6247
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6248 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6317940024988860850#64))).val
theorem output6248_def : output6248 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6317940024988860850#64)) := by
  unfold output6248
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6249 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6248)).val
theorem output6249_def : output6249 = (output6248) := by
  unfold output6249
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6250 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6249 output87)).val
theorem output6250_def : output6250 = (.seq output6249 output87) := by
  unfold output6250
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6251 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6250)).val
theorem output6251_def : output6251 = (output6250) := by
  unfold output6251
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6252 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6251)).val
theorem output6252_def : output6252 = (.seq output39 output6251) := by
  unfold output6252
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6253 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6252)).val
theorem output6253_def : output6253 = (output6252) := by
  unfold output6253
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6254 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6247 output6253)).val
theorem output6254_def : output6254 = (.seq output6247 output6253) := by
  unfold output6254
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6255 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6254)).val
theorem output6255_def : output6255 = (output6254) := by
  unfold output6255
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6256 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6255)).val
theorem output6256_def : output6256 = (.seq output39 output6255) := by
  unfold output6256
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6257 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6256)).val
theorem output6257_def : output6257 = (output6256) := by
  unfold output6257
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6258 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6245 output6257)).val
theorem output6258_def : output6258 = (.seq output6245 output6257) := by
  unfold output6258
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6259 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6258)).val
theorem output6259_def : output6259 = (output6258) := by
  unfold output6259
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6260 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3752#64]))).val
theorem output6260_def : output6260 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3752#64])) := by
  unfold output6260
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6261 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6260)).val
theorem output6261_def : output6261 = (output6260) := by
  unfold output6261
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6262 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14634479491382401593#64))).val
theorem output6262_def : output6262 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 14634479491382401593#64)) := by
  unfold output6262
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6263 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6262)).val
theorem output6263_def : output6263 = (output6262) := by
  unfold output6263
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6264 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6263 output87)).val
theorem output6264_def : output6264 = (.seq output6263 output87) := by
  unfold output6264
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6265 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6264)).val
theorem output6265_def : output6265 = (output6264) := by
  unfold output6265
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6266 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6265)).val
theorem output6266_def : output6266 = (.seq output39 output6265) := by
  unfold output6266
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6267 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6266)).val
theorem output6267_def : output6267 = (output6266) := by
  unfold output6267
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6268 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6261 output6267)).val
theorem output6268_def : output6268 = (.seq output6261 output6267) := by
  unfold output6268
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6269 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6268)).val
theorem output6269_def : output6269 = (output6268) := by
  unfold output6269
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6270 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6269)).val
theorem output6270_def : output6270 = (.seq output39 output6269) := by
  unfold output6270
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6271 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6270)).val
theorem output6271_def : output6271 = (output6270) := by
  unfold output6271
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6272 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6259 output6271)).val
theorem output6272_def : output6272 = (.seq output6259 output6271) := by
  unfold output6272
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6273 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6272)).val
theorem output6273_def : output6273 = (output6272) := by
  unfold output6273
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6274 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3760#64]))).val
theorem output6274_def : output6274 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3760#64])) := by
  unfold output6274
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6275 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6274)).val
theorem output6275_def : output6275 = (output6274) := by
  unfold output6275
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6276 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5666948055268535989#64))).val
theorem output6276_def : output6276 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5666948055268535989#64)) := by
  unfold output6276
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6277 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6276)).val
theorem output6277_def : output6277 = (output6276) := by
  unfold output6277
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6278 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6277 output87)).val
theorem output6278_def : output6278 = (.seq output6277 output87) := by
  unfold output6278
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6279 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6278)).val
theorem output6279_def : output6279 = (output6278) := by
  unfold output6279
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6280 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6279)).val
theorem output6280_def : output6280 = (.seq output39 output6279) := by
  unfold output6280
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6281 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6280)).val
theorem output6281_def : output6281 = (output6280) := by
  unfold output6281
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6282 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6275 output6281)).val
theorem output6282_def : output6282 = (.seq output6275 output6281) := by
  unfold output6282
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6283 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6282)).val
theorem output6283_def : output6283 = (output6282) := by
  unfold output6283
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6284 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6283)).val
theorem output6284_def : output6284 = (.seq output39 output6283) := by
  unfold output6284
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6285 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6284)).val
theorem output6285_def : output6285 = (output6284) := by
  unfold output6285
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6286 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6273 output6285)).val
theorem output6286_def : output6286 = (.seq output6273 output6285) := by
  unfold output6286
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6287 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6286)).val
theorem output6287_def : output6287 = (output6286) := by
  unfold output6287
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6288 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3768#64]))).val
theorem output6288_def : output6288 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3768#64])) := by
  unfold output6288
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6289 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6288)).val
theorem output6289_def : output6289 = (output6288) := by
  unfold output6289
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6290 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1578157964224562126#64))).val
theorem output6290_def : output6290 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1578157964224562126#64)) := by
  unfold output6290
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6291 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6290)).val
theorem output6291_def : output6291 = (output6290) := by
  unfold output6291
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6292 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6291 output87)).val
theorem output6292_def : output6292 = (.seq output6291 output87) := by
  unfold output6292
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6293 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6292)).val
theorem output6293_def : output6293 = (output6292) := by
  unfold output6293
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6294 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6293)).val
theorem output6294_def : output6294 = (.seq output39 output6293) := by
  unfold output6294
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6295 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6294)).val
theorem output6295_def : output6295 = (output6294) := by
  unfold output6295
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6296 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6289 output6295)).val
theorem output6296_def : output6296 = (.seq output6289 output6295) := by
  unfold output6296
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6297 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6296)).val
theorem output6297_def : output6297 = (output6296) := by
  unfold output6297
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6298 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6297)).val
theorem output6298_def : output6298 = (.seq output39 output6297) := by
  unfold output6298
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6299 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6298)).val
theorem output6299_def : output6299 = (output6298) := by
  unfold output6299
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6300 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6287 output6299)).val
theorem output6300_def : output6300 = (.seq output6287 output6299) := by
  unfold output6300
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6301 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6300)).val
theorem output6301_def : output6301 = (output6300) := by
  unfold output6301
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6302 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3776#64]))).val
theorem output6302_def : output6302 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3776#64])) := by
  unfold output6302
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6303 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6302)).val
theorem output6303_def : output6303 = (output6302) := by
  unfold output6303
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6304 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 92203205520679873#64))).val
theorem output6304_def : output6304 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 92203205520679873#64)) := by
  unfold output6304
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6305 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6304)).val
theorem output6305_def : output6305 = (output6304) := by
  unfold output6305
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6306 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6305 output87)).val
theorem output6306_def : output6306 = (.seq output6305 output87) := by
  unfold output6306
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6307 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6306)).val
theorem output6307_def : output6307 = (output6306) := by
  unfold output6307
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6308 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6307)).val
theorem output6308_def : output6308 = (.seq output39 output6307) := by
  unfold output6308
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6309 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6308)).val
theorem output6309_def : output6309 = (output6308) := by
  unfold output6309
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6310 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6303 output6309)).val
theorem output6310_def : output6310 = (.seq output6303 output6309) := by
  unfold output6310
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6311 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6310)).val
theorem output6311_def : output6311 = (output6310) := by
  unfold output6311
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6312 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6311)).val
theorem output6312_def : output6312 = (.seq output39 output6311) := by
  unfold output6312
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6313 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6312)).val
theorem output6313_def : output6313 = (output6312) := by
  unfold output6313
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6314 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6301 output6313)).val
theorem output6314_def : output6314 = (.seq output6301 output6313) := by
  unfold output6314
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6315 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6314)).val
theorem output6315_def : output6315 = (output6314) := by
  unfold output6315
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6316 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3784#64]))).val
theorem output6316_def : output6316 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3784#64])) := by
  unfold output6316
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6317 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6316)).val
theorem output6317_def : output6317 = (output6316) := by
  unfold output6317
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6318 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 572916540828819565#64))).val
theorem output6318_def : output6318 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 572916540828819565#64)) := by
  unfold output6318
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6319 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6318)).val
theorem output6319_def : output6319 = (output6318) := by
  unfold output6319
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6320 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6319 output87)).val
theorem output6320_def : output6320 = (.seq output6319 output87) := by
  unfold output6320
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6321 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6320)).val
theorem output6321_def : output6321 = (output6320) := by
  unfold output6321
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6322 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6321)).val
theorem output6322_def : output6322 = (.seq output39 output6321) := by
  unfold output6322
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6323 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6322)).val
theorem output6323_def : output6323 = (output6322) := by
  unfold output6323
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6324 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6317 output6323)).val
theorem output6324_def : output6324 = (.seq output6317 output6323) := by
  unfold output6324
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6325 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6324)).val
theorem output6325_def : output6325 = (output6324) := by
  unfold output6325
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6326 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6325)).val
theorem output6326_def : output6326 = (.seq output39 output6325) := by
  unfold output6326
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6327 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6326)).val
theorem output6327_def : output6327 = (output6326) := by
  unfold output6327
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6328 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6315 output6327)).val
theorem output6328_def : output6328 = (.seq output6315 output6327) := by
  unfold output6328
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6329 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6328)).val
theorem output6329_def : output6329 = (output6328) := by
  unfold output6329
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6330 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3792#64]))).val
theorem output6330_def : output6330 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3792#64])) := by
  unfold output6330
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6331 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6330)).val
theorem output6331_def : output6331 = (output6330) := by
  unfold output6331
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6332 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17204633670617869946#64))).val
theorem output6332_def : output6332 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17204633670617869946#64)) := by
  unfold output6332
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6333 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6332)).val
theorem output6333_def : output6333 = (output6332) := by
  unfold output6333
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6334 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6333 output87)).val
theorem output6334_def : output6334 = (.seq output6333 output87) := by
  unfold output6334
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6335 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6334)).val
theorem output6335_def : output6335 = (output6334) := by
  unfold output6335
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6336 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6335)).val
theorem output6336_def : output6336 = (.seq output39 output6335) := by
  unfold output6336
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6337 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6336)).val
theorem output6337_def : output6337 = (output6336) := by
  unfold output6337
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6338 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6331 output6337)).val
theorem output6338_def : output6338 = (.seq output6331 output6337) := by
  unfold output6338
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6339 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6338)).val
theorem output6339_def : output6339 = (output6338) := by
  unfold output6339
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6340 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6339)).val
theorem output6340_def : output6340 = (.seq output39 output6339) := by
  unfold output6340
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6341 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6340)).val
theorem output6341_def : output6341 = (output6340) := by
  unfold output6341
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6342 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6329 output6341)).val
theorem output6342_def : output6342 = (.seq output6329 output6341) := by
  unfold output6342
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6343 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6342)).val
theorem output6343_def : output6343 = (output6342) := by
  unfold output6343
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6344 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3800#64]))).val
theorem output6344_def : output6344 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3800#64])) := by
  unfold output6344
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6345 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6344)).val
theorem output6345_def : output6345 = (output6344) := by
  unfold output6345
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6346 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6924968209373727718#64))).val
theorem output6346_def : output6346 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6924968209373727718#64)) := by
  unfold output6346
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6347 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6346)).val
theorem output6347_def : output6347 = (output6346) := by
  unfold output6347
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6348 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6347 output87)).val
theorem output6348_def : output6348 = (.seq output6347 output87) := by
  unfold output6348
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6349 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6348)).val
theorem output6349_def : output6349 = (output6348) := by
  unfold output6349
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6350 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6349)).val
theorem output6350_def : output6350 = (.seq output39 output6349) := by
  unfold output6350
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6351 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6350)).val
theorem output6351_def : output6351 = (output6350) := by
  unfold output6351
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6352 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6345 output6351)).val
theorem output6352_def : output6352 = (.seq output6345 output6351) := by
  unfold output6352
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6353 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6352)).val
theorem output6353_def : output6353 = (output6352) := by
  unfold output6353
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6354 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6353)).val
theorem output6354_def : output6354 = (.seq output39 output6353) := by
  unfold output6354
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6355 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6354)).val
theorem output6355_def : output6355 = (output6354) := by
  unfold output6355
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6356 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6343 output6355)).val
theorem output6356_def : output6356 = (.seq output6343 output6355) := by
  unfold output6356
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6357 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6356)).val
theorem output6357_def : output6357 = (output6356) := by
  unfold output6357
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6358 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3808#64]))).val
theorem output6358_def : output6358 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3808#64])) := by
  unfold output6358
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6359 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6358)).val
theorem output6359_def : output6359 = (output6358) := by
  unfold output6359
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6360 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5915497081334721257#64))).val
theorem output6360_def : output6360 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5915497081334721257#64)) := by
  unfold output6360
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6361 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6360)).val
theorem output6361_def : output6361 = (output6360) := by
  unfold output6361
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6362 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6361 output87)).val
theorem output6362_def : output6362 = (.seq output6361 output87) := by
  unfold output6362
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6363 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6362)).val
theorem output6363_def : output6363 = (output6362) := by
  unfold output6363
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6364 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6363)).val
theorem output6364_def : output6364 = (.seq output39 output6363) := by
  unfold output6364
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6365 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6364)).val
theorem output6365_def : output6365 = (output6364) := by
  unfold output6365
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6366 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6359 output6365)).val
theorem output6366_def : output6366 = (.seq output6359 output6365) := by
  unfold output6366
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6367 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6366)).val
theorem output6367_def : output6367 = (output6366) := by
  unfold output6367
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6368 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6367)).val
theorem output6368_def : output6368 = (.seq output39 output6367) := by
  unfold output6368
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6369 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6368)).val
theorem output6369_def : output6369 = (output6368) := by
  unfold output6369
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6370 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6357 output6369)).val
theorem output6370_def : output6370 = (.seq output6357 output6369) := by
  unfold output6370
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6371 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6370)).val
theorem output6371_def : output6371 = (output6370) := by
  unfold output6371
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6372 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3816#64]))).val
theorem output6372_def : output6372 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3816#64])) := by
  unfold output6372
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6373 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6372)).val
theorem output6373_def : output6373 = (output6372) := by
  unfold output6373
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6374 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1590100849350973618#64))).val
theorem output6374_def : output6374 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1590100849350973618#64)) := by
  unfold output6374
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6375 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6374)).val
theorem output6375_def : output6375 = (output6374) := by
  unfold output6375
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6376 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6375 output87)).val
theorem output6376_def : output6376 = (.seq output6375 output87) := by
  unfold output6376
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6377 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6376)).val
theorem output6377_def : output6377 = (output6376) := by
  unfold output6377
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6378 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6377)).val
theorem output6378_def : output6378 = (.seq output39 output6377) := by
  unfold output6378
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6379 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6378)).val
theorem output6379_def : output6379 = (output6378) := by
  unfold output6379
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6380 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6373 output6379)).val
theorem output6380_def : output6380 = (.seq output6373 output6379) := by
  unfold output6380
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6381 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6380)).val
theorem output6381_def : output6381 = (output6380) := by
  unfold output6381
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6382 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6381)).val
theorem output6382_def : output6382 = (.seq output39 output6381) := by
  unfold output6382
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6383 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6382)).val
theorem output6383_def : output6383 = (output6382) := by
  unfold output6383
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6384 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6371 output6383)).val
theorem output6384_def : output6384 = (.seq output6371 output6383) := by
  unfold output6384
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6385 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6384)).val
theorem output6385_def : output6385 = (output6384) := by
  unfold output6385
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6386 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3824#64]))).val
theorem output6386_def : output6386 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3824#64])) := by
  unfold output6386
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6387 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6386)).val
theorem output6387_def : output6387 = (output6386) := by
  unfold output6387
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6388 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3672140328108400701#64))).val
theorem output6388_def : output6388 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3672140328108400701#64)) := by
  unfold output6388
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6389 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6388)).val
theorem output6389_def : output6389 = (output6388) := by
  unfold output6389
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6390 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6389 output87)).val
theorem output6390_def : output6390 = (.seq output6389 output87) := by
  unfold output6390
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6391 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6390)).val
theorem output6391_def : output6391 = (output6390) := by
  unfold output6391
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6392 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6391)).val
theorem output6392_def : output6392 = (.seq output39 output6391) := by
  unfold output6392
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6393 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6392)).val
theorem output6393_def : output6393 = (output6392) := by
  unfold output6393
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6394 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6387 output6393)).val
theorem output6394_def : output6394 = (.seq output6387 output6393) := by
  unfold output6394
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6395 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6394)).val
theorem output6395_def : output6395 = (output6394) := by
  unfold output6395
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6396 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6395)).val
theorem output6396_def : output6396 = (.seq output39 output6395) := by
  unfold output6396
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6397 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6396)).val
theorem output6397_def : output6397 = (output6396) := by
  unfold output6397
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6398 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6385 output6397)).val
theorem output6398_def : output6398 = (.seq output6385 output6397) := by
  unfold output6398
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6399 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6398)).val
theorem output6399_def : output6399 = (output6398) := by
  unfold output6399
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6400 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3832#64]))).val
theorem output6400_def : output6400 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3832#64])) := by
  unfold output6400
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6401 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6400)).val
theorem output6401_def : output6401 = (output6400) := by
  unfold output6401
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6402 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8693114993904885301#64))).val
theorem output6402_def : output6402 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8693114993904885301#64)) := by
  unfold output6402
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6403 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6402)).val
theorem output6403_def : output6403 = (output6402) := by
  unfold output6403
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6404 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6403 output87)).val
theorem output6404_def : output6404 = (.seq output6403 output87) := by
  unfold output6404
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6405 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6404)).val
theorem output6405_def : output6405 = (output6404) := by
  unfold output6405
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6406 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6405)).val
theorem output6406_def : output6406 = (.seq output39 output6405) := by
  unfold output6406
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6407 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6406)).val
theorem output6407_def : output6407 = (output6406) := by
  unfold output6407
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6408 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6401 output6407)).val
theorem output6408_def : output6408 = (.seq output6401 output6407) := by
  unfold output6408
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6409 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6408)).val
theorem output6409_def : output6409 = (output6408) := by
  unfold output6409
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6410 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6409)).val
theorem output6410_def : output6410 = (.seq output39 output6409) := by
  unfold output6410
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6411 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6410)).val
theorem output6411_def : output6411 = (output6410) := by
  unfold output6411
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6412 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6399 output6411)).val
theorem output6412_def : output6412 = (.seq output6399 output6411) := by
  unfold output6412
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6413 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6412)).val
theorem output6413_def : output6413 = (output6412) := by
  unfold output6413
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6414 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3840#64]))).val
theorem output6414_def : output6414 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3840#64])) := by
  unfold output6414
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6415 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6414)).val
theorem output6415_def : output6415 = (output6414) := by
  unfold output6415
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6416 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11862766565471805471#64))).val
theorem output6416_def : output6416 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11862766565471805471#64)) := by
  unfold output6416
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6417 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6416)).val
theorem output6417_def : output6417 = (output6416) := by
  unfold output6417
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6418 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6417 output87)).val
theorem output6418_def : output6418 = (.seq output6417 output87) := by
  unfold output6418
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6419 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6418)).val
theorem output6419_def : output6419 = (output6418) := by
  unfold output6419
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6420 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6419)).val
theorem output6420_def : output6420 = (.seq output39 output6419) := by
  unfold output6420
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6421 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6420)).val
theorem output6421_def : output6421 = (output6420) := by
  unfold output6421
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6422 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6415 output6421)).val
theorem output6422_def : output6422 = (.seq output6415 output6421) := by
  unfold output6422
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6423 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6422)).val
theorem output6423_def : output6423 = (output6422) := by
  unfold output6423
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6424 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6423)).val
theorem output6424_def : output6424 = (.seq output39 output6423) := by
  unfold output6424
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6425 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6424)).val
theorem output6425_def : output6425 = (output6424) := by
  unfold output6425
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6426 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6413 output6425)).val
theorem output6426_def : output6426 = (.seq output6413 output6425) := by
  unfold output6426
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6427 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6426)).val
theorem output6427_def : output6427 = (output6426) := by
  unfold output6427
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6428 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3848#64]))).val
theorem output6428_def : output6428 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3848#64])) := by
  unfold output6428
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6429 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6428)).val
theorem output6429_def : output6429 = (output6428) := by
  unfold output6429
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6430 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9640042925497046428#64))).val
theorem output6430_def : output6430 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9640042925497046428#64)) := by
  unfold output6430
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6431 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6430)).val
theorem output6431_def : output6431 = (output6430) := by
  unfold output6431
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6432 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6431 output87)).val
theorem output6432_def : output6432 = (.seq output6431 output87) := by
  unfold output6432
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6433 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6432)).val
theorem output6433_def : output6433 = (output6432) := by
  unfold output6433
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6434 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6433)).val
theorem output6434_def : output6434 = (.seq output39 output6433) := by
  unfold output6434
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6435 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6434)).val
theorem output6435_def : output6435 = (output6434) := by
  unfold output6435
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6436 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6429 output6435)).val
theorem output6436_def : output6436 = (.seq output6429 output6435) := by
  unfold output6436
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6437 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6436)).val
theorem output6437_def : output6437 = (output6436) := by
  unfold output6437
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6438 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6437)).val
theorem output6438_def : output6438 = (.seq output39 output6437) := by
  unfold output6438
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6439 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6438)).val
theorem output6439_def : output6439 = (output6438) := by
  unfold output6439
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6440 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6427 output6439)).val
theorem output6440_def : output6440 = (.seq output6427 output6439) := by
  unfold output6440
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6441 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6440)).val
theorem output6441_def : output6441 = (output6440) := by
  unfold output6441
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6442 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3856#64]))).val
theorem output6442_def : output6442 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3856#64])) := by
  unfold output6442
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6443 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6442)).val
theorem output6443_def : output6443 = (output6442) := by
  unfold output6443
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6444 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1877083417397643448#64))).val
theorem output6444_def : output6444 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1877083417397643448#64)) := by
  unfold output6444
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6445 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6444)).val
theorem output6445_def : output6445 = (output6444) := by
  unfold output6445
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6446 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6445 output87)).val
theorem output6446_def : output6446 = (.seq output6445 output87) := by
  unfold output6446
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6447 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6446)).val
theorem output6447_def : output6447 = (output6446) := by
  unfold output6447
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6448 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6447)).val
theorem output6448_def : output6448 = (.seq output39 output6447) := by
  unfold output6448
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6449 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6448)).val
theorem output6449_def : output6449 = (output6448) := by
  unfold output6449
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6450 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6443 output6449)).val
theorem output6450_def : output6450 = (.seq output6443 output6449) := by
  unfold output6450
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6451 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6450)).val
theorem output6451_def : output6451 = (output6450) := by
  unfold output6451
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6452 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6451)).val
theorem output6452_def : output6452 = (.seq output39 output6451) := by
  unfold output6452
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6453 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6452)).val
theorem output6453_def : output6453 = (output6452) := by
  unfold output6453
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6454 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6441 output6453)).val
theorem output6454_def : output6454 = (.seq output6441 output6453) := by
  unfold output6454
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6455 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6454)).val
theorem output6455_def : output6455 = (output6454) := by
  unfold output6455
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6456 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3864#64]))).val
theorem output6456_def : output6456 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3864#64])) := by
  unfold output6456
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6457 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6456)).val
theorem output6457_def : output6457 = (output6456) := by
  unfold output6457
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6458 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1829261189398470686#64))).val
theorem output6458_def : output6458 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1829261189398470686#64)) := by
  unfold output6458
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6459 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6458)).val
theorem output6459_def : output6459 = (output6458) := by
  unfold output6459
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6460 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6459 output87)).val
theorem output6460_def : output6460 = (.seq output6459 output87) := by
  unfold output6460
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6461 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6460)).val
theorem output6461_def : output6461 = (output6460) := by
  unfold output6461
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6462 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6461)).val
theorem output6462_def : output6462 = (.seq output39 output6461) := by
  unfold output6462
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6463 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6462)).val
theorem output6463_def : output6463 = (output6462) := by
  unfold output6463
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6464 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6457 output6463)).val
theorem output6464_def : output6464 = (.seq output6457 output6463) := by
  unfold output6464
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6465 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6464)).val
theorem output6465_def : output6465 = (output6464) := by
  unfold output6465
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6466 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6465)).val
theorem output6466_def : output6466 = (.seq output39 output6465) := by
  unfold output6466
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6467 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6466)).val
theorem output6467_def : output6467 = (output6466) := by
  unfold output6467
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6468 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6455 output6467)).val
theorem output6468_def : output6468 = (.seq output6455 output6467) := by
  unfold output6468
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6469 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6468)).val
theorem output6469_def : output6469 = (output6468) := by
  unfold output6469
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6470 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3872#64]))).val
theorem output6470_def : output6470 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3872#64])) := by
  unfold output6470
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6471 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6470)).val
theorem output6471_def : output6471 = (output6470) := by
  unfold output6471
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6472 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2172204746352322546#64))).val
theorem output6472_def : output6472 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2172204746352322546#64)) := by
  unfold output6472
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6473 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6472)).val
theorem output6473_def : output6473 = (output6472) := by
  unfold output6473
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6474 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6473 output87)).val
theorem output6474_def : output6474 = (.seq output6473 output87) := by
  unfold output6474
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6475 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6474)).val
theorem output6475_def : output6475 = (output6474) := by
  unfold output6475
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6476 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6475)).val
theorem output6476_def : output6476 = (.seq output39 output6475) := by
  unfold output6476
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6477 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6476)).val
theorem output6477_def : output6477 = (output6476) := by
  unfold output6477
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6478 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6471 output6477)).val
theorem output6478_def : output6478 = (.seq output6471 output6477) := by
  unfold output6478
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6479 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6478)).val
theorem output6479_def : output6479 = (output6478) := by
  unfold output6479
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6480 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6479)).val
theorem output6480_def : output6480 = (.seq output39 output6479) := by
  unfold output6480
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6481 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6480)).val
theorem output6481_def : output6481 = (output6480) := by
  unfold output6481
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6482 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6469 output6481)).val
theorem output6482_def : output6482 = (.seq output6469 output6481) := by
  unfold output6482
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6483 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6482)).val
theorem output6483_def : output6483 = (output6482) := by
  unfold output6483
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6484 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3880#64]))).val
theorem output6484_def : output6484 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3880#64])) := by
  unfold output6484
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6485 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6484)).val
theorem output6485_def : output6485 = (output6484) := by
  unfold output6485
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6486 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11994630442058346377#64))).val
theorem output6486_def : output6486 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11994630442058346377#64)) := by
  unfold output6486
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6487 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6486)).val
theorem output6487_def : output6487 = (output6486) := by
  unfold output6487
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6488 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6487 output87)).val
theorem output6488_def : output6488 = (.seq output6487 output87) := by
  unfold output6488
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6489 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6488)).val
theorem output6489_def : output6489 = (output6488) := by
  unfold output6489
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6490 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6489)).val
theorem output6490_def : output6490 = (.seq output39 output6489) := by
  unfold output6490
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6491 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6490)).val
theorem output6491_def : output6491 = (output6490) := by
  unfold output6491
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6492 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6485 output6491)).val
theorem output6492_def : output6492 = (.seq output6485 output6491) := by
  unfold output6492
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6493 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6492)).val
theorem output6493_def : output6493 = (output6492) := by
  unfold output6493
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6494 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6493)).val
theorem output6494_def : output6494 = (.seq output39 output6493) := by
  unfold output6494
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6495 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6494)).val
theorem output6495_def : output6495 = (output6494) := by
  unfold output6495
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6496 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6483 output6495)).val
theorem output6496_def : output6496 = (.seq output6483 output6495) := by
  unfold output6496
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6497 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6496)).val
theorem output6497_def : output6497 = (output6496) := by
  unfold output6497
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6498 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3888#64]))).val
theorem output6498_def : output6498 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3888#64])) := by
  unfold output6498
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6499 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6498)).val
theorem output6499_def : output6499 = (output6498) := by
  unfold output6499
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6500 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 879791671491744492#64))).val
theorem output6500_def : output6500 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 879791671491744492#64)) := by
  unfold output6500
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6501 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6500)).val
theorem output6501_def : output6501 = (output6500) := by
  unfold output6501
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6502 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6501 output87)).val
theorem output6502_def : output6502 = (.seq output6501 output87) := by
  unfold output6502
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6503 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6502)).val
theorem output6503_def : output6503 = (output6502) := by
  unfold output6503
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6504 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6503)).val
theorem output6504_def : output6504 = (.seq output39 output6503) := by
  unfold output6504
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6505 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6504)).val
theorem output6505_def : output6505 = (output6504) := by
  unfold output6505
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6506 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6499 output6505)).val
theorem output6506_def : output6506 = (.seq output6499 output6505) := by
  unfold output6506
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6507 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6506)).val
theorem output6507_def : output6507 = (output6506) := by
  unfold output6507
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6508 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6507)).val
theorem output6508_def : output6508 = (.seq output39 output6507) := by
  unfold output6508
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6509 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6508)).val
theorem output6509_def : output6509 = (output6508) := by
  unfold output6509
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6510 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6497 output6509)).val
theorem output6510_def : output6510 = (.seq output6497 output6509) := by
  unfold output6510
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6511 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6510)).val
theorem output6511_def : output6511 = (output6510) := by
  unfold output6511
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6512 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3896#64]))).val
theorem output6512_def : output6512 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3896#64])) := by
  unfold output6512
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6513 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6512)).val
theorem output6513_def : output6513 = (output6512) := by
  unfold output6513
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6514 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8702226981475745585#64))).val
theorem output6514_def : output6514 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8702226981475745585#64)) := by
  unfold output6514
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6515 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6514)).val
theorem output6515_def : output6515 = (output6514) := by
  unfold output6515
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6516 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6515 output87)).val
theorem output6516_def : output6516 = (.seq output6515 output87) := by
  unfold output6516
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6517 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6516)).val
theorem output6517_def : output6517 = (output6516) := by
  unfold output6517
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6518 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6517)).val
theorem output6518_def : output6518 = (.seq output39 output6517) := by
  unfold output6518
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6519 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6518)).val
theorem output6519_def : output6519 = (output6518) := by
  unfold output6519
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6520 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6513 output6519)).val
theorem output6520_def : output6520 = (.seq output6513 output6519) := by
  unfold output6520
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6521 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6520)).val
theorem output6521_def : output6521 = (output6520) := by
  unfold output6521
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6522 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output6521)).val
theorem output6522_def : output6522 = (.seq output39 output6521) := by
  unfold output6522
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6523 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6522)).val
theorem output6523_def : output6523 = (output6522) := by
  unfold output6523
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6524 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output6511 output6523)).val
theorem output6524_def : output6524 = (.seq output6511 output6523) := by
  unfold output6524
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6525 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6524)).val
theorem output6525_def : output6525 = (output6524) := by
  unfold output6525
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6526 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3904#64]))).val
theorem output6526_def : output6526 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 3904#64])) := by
  unfold output6526
  exact InitE.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output6527 : WordLangProgHOL (BitVec 64) :=
  (InitE.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output6526)).val
theorem output6527_def : output6527 = (output6526) := by
  unfold output6527
  exact InitE.ComputationCache.boxedValue_eq _

end InitE.FrontendStages.Word.Checkpoints649
