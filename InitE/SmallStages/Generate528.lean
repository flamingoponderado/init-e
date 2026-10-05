import Tools.GenSmallStages
import InitE.SmallStages.Oracles528
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 528 InitE.WordStages.source528.2.1 InitE.WordStages.source528.2.2 InitE.SmallStages.Oracles528.oracle528
